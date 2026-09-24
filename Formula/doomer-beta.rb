class DoomerBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.9.25-beta.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.25-beta.2/doomer_2026.9.25-beta.2_darwin_amd64.tar.gz"
      sha256 "c040c2d7b9686752d965c19f6268afdb578ed232fa67eeb9a2b895a58a1b065d"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.25-beta.2/doomer_2026.9.25-beta.2_darwin_arm64.tar.gz"
      sha256 "f0a1750fd010e23fd1908c7770f2de8fca418537a9a45c7bce8df93ed1b688c8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.25-beta.2/doomer_2026.9.25-beta.2_linux_amd64.tar.gz"
      sha256 "b97477c70f45832161d6f3ee4bae74b627953f41cf63ccd46576aa822deb9290"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.25-beta.2/doomer_2026.9.25-beta.2_linux_arm64.tar.gz"
      sha256 "6d4871dde28e8c821f7f0b0afca666faa3d91a4c713c938abae4a652b8b98d34"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
