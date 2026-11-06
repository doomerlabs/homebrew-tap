class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.6.6"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.6/doomer_2026.11.6.6_darwin_amd64.tar.gz"
      sha256 "4750e90a773b407a082316115a0c772d1a9115505fc39ed07472f62655724459"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.6/doomer_2026.11.6.6_darwin_arm64.tar.gz"
      sha256 "9f1f4232960944bc3389cfffc59b30208cb19477246cb27d99472dc73ef4d031"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.6/doomer_2026.11.6.6_linux_amd64.tar.gz"
      sha256 "2dddd2a52eeaa0ef2754806d9916f87d7b2b3888c08d32ab8b49662552a7d0d3"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.6/doomer_2026.11.6.6_linux_arm64.tar.gz"
      sha256 "7fc3a036451ac7f2251960a22e221d00ab8bd1702b269fd7d1a01075abf6feec"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
