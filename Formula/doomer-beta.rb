class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.13.1-beta.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.13.1-beta.1/doomer_2026.11.13.1-beta.1_darwin_amd64.tar.gz"
      sha256 "c50aa88fad23e2fdd9bfb8d3c04b2fb3c6808be9f01763821a7beba5c5cce34c"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.13.1-beta.1/doomer_2026.11.13.1-beta.1_darwin_arm64.tar.gz"
      sha256 "6f00dba17c71de5ebe40df917609c812abe4b4eee2a616a50c2434ce1b7eea98"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.13.1-beta.1/doomer_2026.11.13.1-beta.1_linux_amd64.tar.gz"
      sha256 "a664c800ae5dfd6a86357c5a0335b7c8c7d68bbb9452abd2fff99e8b9efd9174"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.13.1-beta.1/doomer_2026.11.13.1-beta.1_linux_arm64.tar.gz"
      sha256 "07e4f5941eabea7a1fe52d806e4a120a04277a50a0e0080901a9d7d259387eb1"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
