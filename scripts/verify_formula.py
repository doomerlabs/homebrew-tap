"""Validate a tap branch against an immutable public Doomer release bundle."""
import hashlib
import json
import re
import sys
from pathlib import Path


def verify(tag, formula, directory):
    root = Path(directory)
    checksums = {}
    for line in (root / "checksums.txt").read_text().splitlines():
        digest, name = line.split()
        if name in checksums or not re.fullmatch(r"[0-9a-f]{64}", digest):
            raise ValueError("Invalid or duplicate release checksum")
        checksums[name] = digest
    manifest_bytes = (root / "release-manifest.json").read_bytes()
    if hashlib.sha256(manifest_bytes).hexdigest() != checksums["release-manifest.json"]:
        raise ValueError("Release manifest checksum mismatch")
    manifest = json.loads(manifest_bytes)
    if manifest["schemaVersion"] != 1 or manifest["version"] != tag:
        raise ValueError("Release manifest version mismatch")
    if not re.fullmatch(r"[0-9a-f]{40}", manifest["commit"]):
        raise ValueError("Invalid release source commit")
    published = (root / formula).read_bytes()
    digest = hashlib.sha256(published).hexdigest()
    if digest != checksums[formula] or manifest["artifacts"][formula] != "sha256:" + digest:
        raise ValueError("Published formula checksum mismatch")
    if (root / "proposed.rb").read_bytes() != published:
        raise ValueError("Proposed formula differs from published release")
    versions = re.findall(rb'^  version "([^"]+)"$', published, re.M)
    if versions != [tag.encode()]:
        raise ValueError("Formula version mismatch")
    current = re.search(rb'^  version "([^"]+)"$', (root / "current.rb").read_bytes(), re.M)
    if current and version_key(tag) < version_key(current[1].decode()):
        raise ValueError("Refusing to downgrade the published formula")


def version_key(version):
    core, _, prerelease = version.partition("-")
    # Natural prerelease order: beta.10 follows beta.9; stable follows prerelease.
    suffix = tuple((0, int(p)) if p.isdigit() else (1, p)
                   for p in prerelease.split(".")) if prerelease else ()
    return (*map(int, core.split(".")), not bool(prerelease), suffix)


if __name__ == "__main__":
    try:
        verify(*sys.argv[1:])
    except (ValueError, KeyError) as error:
        sys.exit(str(error))
