class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.20.1-beta.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.20.1-beta.2/doomer_2026.11.20.1-beta.2_darwin_amd64.tar.gz"
      sha256 "f83c5cbcdca2f2ec618e6d880d51247cd7bd86d7f6631b90eec11b1ff58179eb"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.20.1-beta.2/doomer_2026.11.20.1-beta.2_darwin_arm64.tar.gz"
      sha256 "b969fd3376d6cd588560e16684b1757f3a85c5ba45c5446c9032a06b2ac086c5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.20.1-beta.2/doomer_2026.11.20.1-beta.2_linux_amd64.tar.gz"
      sha256 "c3b31821042b85af477d10ad2cc750ec2c877937b56d0d1758de65c85b191bd5"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.20.1-beta.2/doomer_2026.11.20.1-beta.2_linux_arm64.tar.gz"
      sha256 "e9139d4224f7b0b441a22cfc3458bee37cc17019cfbf4bbd84239e1d6c8963e6"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
