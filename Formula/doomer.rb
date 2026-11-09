class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.8.5"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.8.5/doomer_2026.11.8.5_darwin_amd64.tar.gz"
      sha256 "b65f264e040e05f54f1e9e59483b5aad3747a2cd87897343a25ff1d37ae39c82"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.8.5/doomer_2026.11.8.5_darwin_arm64.tar.gz"
      sha256 "9aa6fc57158bda92743b5f8760d18e25c1872070cf87191cdf7b83e4c40183c7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.8.5/doomer_2026.11.8.5_linux_amd64.tar.gz"
      sha256 "83bd7833f94e38a9f73c98540630f725814089c8ca65aaa067995144ff50dcea"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.8.5/doomer_2026.11.8.5_linux_arm64.tar.gz"
      sha256 "302e494d7a08849caad859170f239f545927d2fd601d3fb72180addbf174b4c5"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
