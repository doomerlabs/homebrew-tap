class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.9.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.9.1/doomer_2026.11.9.1_darwin_amd64.tar.gz"
      sha256 "6b795f422f501e07b5c624fb83a93ad8fcb5be9b7e78f6499a04e0cb8f3f4dda"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.9.1/doomer_2026.11.9.1_darwin_arm64.tar.gz"
      sha256 "1305a6761b9e4d5254eab8e145cd769f1e15cfe071a2f71512db0d52b333ce20"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.9.1/doomer_2026.11.9.1_linux_amd64.tar.gz"
      sha256 "e6e199dcf083705f6d3361147d76ac2e8c5f71ed526bbdb0105d3b099a49196e"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.9.1/doomer_2026.11.9.1_linux_arm64.tar.gz"
      sha256 "68e8d38233150999a1a4bcc4628ddc94fb48ed21a311baedaf6836a17dcbd2f5"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
