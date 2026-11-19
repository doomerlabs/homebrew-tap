class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.18.5-beta.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.18.5-beta.1/doomer_2026.11.18.5-beta.1_darwin_amd64.tar.gz"
      sha256 "1db2823399bae8455923804ecc19f1e719743707fc619156608bc65535af1ea5"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.18.5-beta.1/doomer_2026.11.18.5-beta.1_darwin_arm64.tar.gz"
      sha256 "ff86005b515c9ac482dba040e16c1d224b38e3f0b6fec981a997ae66a4ed9e5c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.18.5-beta.1/doomer_2026.11.18.5-beta.1_linux_amd64.tar.gz"
      sha256 "d20a99d97b16761416263bea1726305b846b18e190e50bb7be23b277d8e86740"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.18.5-beta.1/doomer_2026.11.18.5-beta.1_linux_arm64.tar.gz"
      sha256 "6815682281d6061011f03522df76883d125342485920674dd11dfd47d79d41e2"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
