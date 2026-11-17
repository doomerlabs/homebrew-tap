class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.17.1-beta.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.17.1-beta.1/doomer_2026.11.17.1-beta.1_darwin_amd64.tar.gz"
      sha256 "e2094c7c5c0fc548f91b1e5480de822ad5e50a8d2c5b9fe2876d7db2118b2eca"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.17.1-beta.1/doomer_2026.11.17.1-beta.1_darwin_arm64.tar.gz"
      sha256 "6e95d5d4e58e85eb14a76db592f709659b132bc9fc9f23aac00c92221c13034c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.17.1-beta.1/doomer_2026.11.17.1-beta.1_linux_amd64.tar.gz"
      sha256 "fb6dfdb5d44b0c2ef7b330e374d974877d4b1f625bcdfee288f8afc814622935"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.17.1-beta.1/doomer_2026.11.17.1-beta.1_linux_arm64.tar.gz"
      sha256 "dd439d53f1becbefd23ca6544869f59f7e0b21a599dd88717a177a774d4b5d1e"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
