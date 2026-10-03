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
    def test_already_merged_branch_keeps_original_formula_diff(self):
        import subprocess
        with tempfile.TemporaryDirectory() as directory:
            repo = Path(directory)
            def git(*args):
                return subprocess.check_output(['git', '-C', str(repo), *args], text=True).strip()
            git('init', '-q', '-b', 'main')
            git('config', 'user.name', 'Release test')
            git('config', 'user.email', 'release@example.test')
            (repo / 'Formula').mkdir()
            (repo / 'Formula/doomer.rb').write_text('old formula')
            git('add', '.'); git('commit', '-qm', 'base')
            base = git('rev-parse', 'HEAD')
            (repo / 'Formula/doomer.rb').write_text('new formula')
            git('commit', '-qam', 'formula')
            release = git('rev-parse', 'HEAD')
            self.assertEqual(git('merge-base', 'HEAD', release), release)
            self.assertEqual(git('rev-parse', release + '^'), base)
            self.assertEqual(git('diff', '--name-only', base, release), 'Formula/doomer.rb')
