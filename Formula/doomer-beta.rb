class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.18.2-beta.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.18.2-beta.1/doomer_2026.11.18.2-beta.1_darwin_amd64.tar.gz"
      sha256 "e797b634bbeddb10ec483c158e8206d57c3449bc4bb62d60426cc309d4535361"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.18.2-beta.1/doomer_2026.11.18.2-beta.1_darwin_arm64.tar.gz"
      sha256 "7a8507e923c190593cf4adaebc171f4ff7906f51c2a106b358bc7bf309ba383a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.18.2-beta.1/doomer_2026.11.18.2-beta.1_linux_amd64.tar.gz"
      sha256 "32005b163d0c2fcc05afcfac328ccd1321e2a473e969921b1cfbea52b50b3c48"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.18.2-beta.1/doomer_2026.11.18.2-beta.1_linux_arm64.tar.gz"
      sha256 "871acfa2588d4deac6be31a241c21d819bfa6fe60b979efabb3a4bf99bb8585c"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
