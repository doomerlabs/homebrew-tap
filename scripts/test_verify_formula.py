import hashlib
import json
import tempfile
import unittest
from pathlib import Path

from verify_formula import verify, version_key


class FormulaVerificationTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.root = Path(self.temp.name)
        self.formula = b'class Doomer < Formula\n  version "2026.10.1"\nend\n'
        for name in ("doomer.rb", "proposed.rb"):
            (self.root / name).write_bytes(self.formula)
        (self.root / "current.rb").write_bytes(b'  version "2026.10.0"\n')
        digest = hashlib.sha256(self.formula).hexdigest()
        manifest = json.dumps({"schemaVersion": 1, "version": "2026.10.1",
                               "commit": "a" * 40, "artifacts": {"doomer.rb": "sha256:" + digest}}).encode()
        (self.root / "release-manifest.json").write_bytes(manifest)
        (self.root / "checksums.txt").write_text(
            digest + "  doomer.rb\n" + hashlib.sha256(manifest).hexdigest() + "  release-manifest.json\n")

    def check(self):
        verify("2026.10.1", "doomer.rb", self.root)

    def test_valid_release(self):
        self.check()

    def test_modified_proposal_rejected(self):
        (self.root / "proposed.rb").write_bytes(self.formula + b'# changed\n')
        with self.assertRaisesRegex(ValueError, "differs"):
            self.check()

    def test_tampered_manifest_rejected(self):
        (self.root / "release-manifest.json").write_text('{}')
        with self.assertRaisesRegex(ValueError, "manifest checksum"):
            self.check()

    def test_tampered_published_formula_rejected(self):
        (self.root / "doomer.rb").write_bytes(self.formula + b'# changed\n')
        with self.assertRaisesRegex(ValueError, "formula checksum"):
            self.check()

    def test_duplicate_checksum_rejected(self):
        with (self.root / "checksums.txt").open('a') as file:
            file.write(hashlib.sha256(self.formula).hexdigest() + '  doomer.rb\n')
        with self.assertRaisesRegex(ValueError, "duplicate"):
            self.check()

    def test_downgrade_rejected(self):
        (self.root / "current.rb").write_bytes(b'  version "2026.10.2"\n')
        with self.assertRaisesRegex(ValueError, "downgrade"):
            self.check()

    def test_prerelease_order(self):
        self.assertLess(version_key('2026.10.1-beta.9'), version_key('2026.10.1-beta.10'))
        self.assertLess(version_key('2026.10.1-beta.10'), version_key('2026.10.1'))


if __name__ == '__main__':
    unittest.main()

class ReleaseBranchTests(unittest.TestCase):
    def run_verifier(self, *, merged=False, extra=False, symlink=False):
        import os
        import shutil
        import subprocess
        fixture = FormulaVerificationTests()
        fixture.setUp()
        self.addCleanup(fixture.doCleanups)
        root = fixture.root
        checkout = root / 'checkout'
        checkout.mkdir()
        def git(*args):
            return subprocess.check_output(['git', '-C', str(checkout), *args], text=True, stderr=subprocess.DEVNULL).strip()
        git('init', '-q', '-b', 'main')
        git('config', 'user.name', 'Release test')
        git('config', 'user.email', 'release@example.test')
        (checkout / 'Formula').mkdir()
        (checkout / 'Formula/doomer.rb').write_text('  version "2026.10.0"\n')
        (checkout / 'scripts').mkdir()
        for name in ('verify-release-formula.sh', 'verify_formula.py'):
            shutil.copyfile(Path(__file__).parent / name, checkout / 'scripts' / name)
        git('add', '.'); git('commit', '-qm', 'base')
        git('switch', '-qc', 'release/doomer-2026.10.1')
        if symlink:
            (checkout / 'Formula/doomer.rb').unlink()
            (checkout / 'Formula/doomer.rb').symlink_to('../scripts/verify_formula.py')
        else:
            (checkout / 'Formula/doomer.rb').write_bytes(fixture.formula)
        if extra:
            (checkout / 'unexpected.txt').write_text('not a formula')
        git('add', '.'); git('commit', '-qm', 'formula')
        release = git('rev-parse', 'HEAD')
        subprocess.check_call(['git', 'clone', '-q', '--bare', str(checkout), str(root / 'remote.git')])
        git('remote', 'add', 'origin', str(root / 'remote.git'))
        git('switch', '-q', 'main')
        if merged:
            git('merge', '--ff-only', '-q', 'release/doomer-2026.10.1')
        fakebin = root / 'fakebin'
        fakebin.mkdir()
        curl = fakebin / 'curl'
        curl.write_text("""#!/usr/bin/env python3
import os, shutil, sys
from pathlib import Path
args = sys.argv[1:]
url = next(arg for arg in args if arg.startswith('https://'))
shutil.copyfile(Path(os.environ['TEST_ASSETS']) / url.rsplit('/', 1)[1], args[args.index('-o') + 1])
""")
        curl.chmod(0o755)
        env = dict(os.environ, RELEASE_BRANCH='release/doomer-2026.10.1', RELEASE_SHA=release,
                   TEST_ASSETS=str(root), PATH=str(fakebin) + os.pathsep + os.environ['PATH'])
        return subprocess.run(['bash', 'scripts/verify-release-formula.sh'], cwd=checkout, env=env,
                              capture_output=True, text=True)

    def test_fresh_release_branch(self):
        result = self.run_verifier()
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertIn('Verified formula', result.stdout)

    def test_already_merged_release_retry(self):
        result = self.run_verifier(merged=True)
        self.assertEqual(result.returncode, 0, result.stderr)

    def test_unrelated_branch_changes_rejected(self):
        result = self.run_verifier(extra=True)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn('exactly its formula', result.stderr)

    def test_symlinked_formula_rejected(self):
        result = self.run_verifier(symlink=True)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn('regular file', result.stderr)
