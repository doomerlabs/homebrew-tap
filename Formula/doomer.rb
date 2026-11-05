class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.5.4"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.4/doomer_2026.11.5.4_darwin_amd64.tar.gz"
      sha256 "97afe4321fc338fb237133cebf4e4b78b2d75c7f28983492a42b881e987cc1db"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.4/doomer_2026.11.5.4_darwin_arm64.tar.gz"
      sha256 "772e4cc741190ee3467ff2c75acc75cf19550d685fb5bb6b2fd3b4ef72abc9b2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.4/doomer_2026.11.5.4_linux_amd64.tar.gz"
      sha256 "985a1ff722cfa84166ff699fcec181bcb3777b05103d387832fff0fe36c5eba4"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.4/doomer_2026.11.5.4_linux_arm64.tar.gz"
      sha256 "c88711bcf69916e5f20b002723191ce8ab1f9585850967023da94ca1aa7d290b"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
