class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.18.1-beta.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.18.1-beta.1/doomer_2026.11.18.1-beta.1_darwin_amd64.tar.gz"
      sha256 "9dee01ef68b491888cbab4fbbe90b599e4f893a760fe94df1f212a021ee88aad"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.18.1-beta.1/doomer_2026.11.18.1-beta.1_darwin_arm64.tar.gz"
      sha256 "3eab151995bdbff036966a6a7035c3c5b995f80badf62cb7a7fbd8601d29d067"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.18.1-beta.1/doomer_2026.11.18.1-beta.1_linux_amd64.tar.gz"
      sha256 "c5dd2a84e58694ff2ed9178e379e17abbcbdcb4f3048116a17b7a08c3101b6ad"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.18.1-beta.1/doomer_2026.11.18.1-beta.1_linux_arm64.tar.gz"
      sha256 "a49c21be5639c277ad90c99e45183e833fa97d5ab28832bb388166e134a40b06"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
