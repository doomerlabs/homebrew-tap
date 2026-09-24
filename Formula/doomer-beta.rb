class DoomerBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.9.24-beta"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.24-beta/doomer_2026.9.24-beta_darwin_amd64.tar.gz"
      sha256 "b52707ffa6b37da99e6144b6e978dbabe20ad856ec7209547ef9baa60f2631b7"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.24-beta/doomer_2026.9.24-beta_darwin_arm64.tar.gz"
      sha256 "5307eee32aacc1e7ee24f0ad12e32b5a69ea8d8eb03f5f27352cef6fb42ee5ae"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.24-beta/doomer_2026.9.24-beta_linux_amd64.tar.gz"
      sha256 "6902cbedc19acee1842955dab45679cf2e84e6af085d3dcf80c9ad461410b893"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.24-beta/doomer_2026.9.24-beta_linux_arm64.tar.gz"
      sha256 "5e33b0313a342f91c6c6dc2b7f0530b03fe69087368b2d6bd84e6ca9783a1f26"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
