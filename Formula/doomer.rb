class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.2/doomer_2026.11.2_darwin_amd64.tar.gz"
      sha256 "1259cacc3d59e2e6449a9cf66728898f17c305e54223e40beb9a9a5f35e0999a"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.2/doomer_2026.11.2_darwin_arm64.tar.gz"
      sha256 "7571b24296022e6e69143d2ce077fac643c84fe56b96073c8212c90b513ef8e8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.2/doomer_2026.11.2_linux_amd64.tar.gz"
      sha256 "024203d8167163702d8c4998786ccea9157f33323d39397732feaffa7729c617"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.2/doomer_2026.11.2_linux_arm64.tar.gz"
      sha256 "b158f5109587fb0045cb38a7e1a6ed2a550e26d966ce7d8c39a98a9fc13e8a3c"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
