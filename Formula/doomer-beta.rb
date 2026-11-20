class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.20.1-beta.5"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.20.1-beta.5/doomer_2026.11.20.1-beta.5_darwin_amd64.tar.gz"
      sha256 "1c8e8b68ff2c9776298c58d808f22f400e5b2559589bb3b8c160b6678186482f"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.20.1-beta.5/doomer_2026.11.20.1-beta.5_darwin_arm64.tar.gz"
      sha256 "78fc5db0a42bdc3a264b34015a3ef329f6d17609928f697501aa973130fcaf3d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.20.1-beta.5/doomer_2026.11.20.1-beta.5_linux_amd64.tar.gz"
      sha256 "cf5a9ee010041cdd3c428162ae275f15f3a260944c533ac7a171c7137068e9bc"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.20.1-beta.5/doomer_2026.11.20.1-beta.5_linux_arm64.tar.gz"
      sha256 "c2f3c1ca9a771c006db633db6e849cff0ffa6192fcd3f777f72e622d09ea727c"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
