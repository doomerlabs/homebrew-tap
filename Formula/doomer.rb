class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.10.18"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.18/doomer_2026.10.18_darwin_amd64.tar.gz"
      sha256 "85d57f357c85bf6c67056696162ab5508e71d78d454d83c999f1a6be70fa9591"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.18/doomer_2026.10.18_darwin_arm64.tar.gz"
      sha256 "72040becf248a186ae9b550f86d34cd3d15d18f78faf3f7e2b3100cdc4ea481b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.18/doomer_2026.10.18_linux_amd64.tar.gz"
      sha256 "0e7f3a2e3da6988db8e686ec7468e4722b3c37adad48b6da6d431be18200c635"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.18/doomer_2026.10.18_linux_arm64.tar.gz"
      sha256 "13ac7cf2a979ed0e15a02c75dc944de219acdad8a39c991d77e28e72b4c0c969"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
