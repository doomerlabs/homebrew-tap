class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.3.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.3.3/doomer_2026.11.3.3_darwin_amd64.tar.gz"
      sha256 "9e7a916e7db1cdfeefbac914365db045c4b8d5fab55b3c78e46062a5379c113e"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.3.3/doomer_2026.11.3.3_darwin_arm64.tar.gz"
      sha256 "f44d7b294a50f03e20e4667faaeab073f5ad20187353cc3a1731298c1ab5e86d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.3.3/doomer_2026.11.3.3_linux_amd64.tar.gz"
      sha256 "50b8955bba860d6ed7ae85b26f10a9495f626f3f77ce436544a15f047dbd3f24"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.3.3/doomer_2026.11.3.3_linux_arm64.tar.gz"
      sha256 "203c5e56df9cfb9e3784b63afa49a7b59f5c6750d5e040814d5be1d0b2c4cec9"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
