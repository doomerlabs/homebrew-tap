class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.3.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.3.1/doomer_2026.11.3.1_darwin_amd64.tar.gz"
      sha256 "95ae7a72df69583b97766a145772aab143c9ec0107545e9b19c80f8acf13deae"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.3.1/doomer_2026.11.3.1_darwin_arm64.tar.gz"
      sha256 "9b634f8129d390e16cfceb551e399619fa71eeb237b894e5b593a9ccb8d9a532"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.3.1/doomer_2026.11.3.1_linux_amd64.tar.gz"
      sha256 "a9ff7c08eac622c7ae43838c06cabcaa5ab8f7e0c2fe1c3cfc8b01d08c0c10de"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.3.1/doomer_2026.11.3.1_linux_arm64.tar.gz"
      sha256 "f97056cf9e1fbb3bde0071a70b797f53a7b9be6398ede6e366407cfe57bb036b"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
