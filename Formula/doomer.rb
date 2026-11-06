class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.6.11"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.11/doomer_2026.11.6.11_darwin_amd64.tar.gz"
      sha256 "526a532f8f2ccc58f322b41c2f03150831f723e1b97b3cba80fb1aed5e27f855"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.11/doomer_2026.11.6.11_darwin_arm64.tar.gz"
      sha256 "60e68b627494f39c77db8443d6ac189bdc6889ce771ee225df0b15a9be2ceb5e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.11/doomer_2026.11.6.11_linux_amd64.tar.gz"
      sha256 "b28cd88b057086591e3e1fb829b4cfb980c7d46d4cec0325741d1282dc8bc386"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.11/doomer_2026.11.6.11_linux_arm64.tar.gz"
      sha256 "55215ab973fd7c978d7474060e0c92ec1286ed37edad8b33fbbc3b6f2d6efd13"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
