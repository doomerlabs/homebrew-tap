class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.15-beta.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.15-beta.1/doomer_2026.11.15-beta.1_darwin_amd64.tar.gz"
      sha256 "7e9deccd9436d82f296ea5608d0dee312ccf145bde10e9535fdc7e7831be3e37"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.15-beta.1/doomer_2026.11.15-beta.1_darwin_arm64.tar.gz"
      sha256 "36d3b9add1878f6f9346cb04979750451f0dc52dd03e49c79fbdff21bcb1097d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.15-beta.1/doomer_2026.11.15-beta.1_linux_amd64.tar.gz"
      sha256 "5155ed238107cc170ab0322c857b803227174902efaaa0156fd35940e6289de8"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.15-beta.1/doomer_2026.11.15-beta.1_linux_arm64.tar.gz"
      sha256 "0b791896ab3896009f5a8a356bc13098d8393cbd359262a55dd812d1575465a4"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
