class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.20.1-beta.6"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.20.1-beta.6/doomer_2026.11.20.1-beta.6_darwin_amd64.tar.gz"
      sha256 "b06aa6b6bc4d494b2f0b74bc3b4bf49c32182c3c7553487923e8577e7e62a229"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.20.1-beta.6/doomer_2026.11.20.1-beta.6_darwin_arm64.tar.gz"
      sha256 "13652407248c214e8232909408292898d4a31a845c51d31c05a458cfabecb465"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.20.1-beta.6/doomer_2026.11.20.1-beta.6_linux_amd64.tar.gz"
      sha256 "d207abadb8924a47741dd7596cf7fd9404eaed3fe95e6e82379bdc8fe645eb74"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.20.1-beta.6/doomer_2026.11.20.1-beta.6_linux_arm64.tar.gz"
      sha256 "dbee1c4e979bf879e330aacc4dc311ead078ae325850ab88a46c8b30f59737fd"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
