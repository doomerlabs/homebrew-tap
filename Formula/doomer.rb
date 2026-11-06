class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.5.9"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.9/doomer_2026.11.5.9_darwin_amd64.tar.gz"
      sha256 "3a3496fbd361d0a35b2cf81e0e66acd3524e5c7f82c3609c4ccbe52be04d6591"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.9/doomer_2026.11.5.9_darwin_arm64.tar.gz"
      sha256 "dfd0ea21a65d5457a5d9994be7b04bd8c18ae252582d1e287e6b9f5afc7ef3a8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.9/doomer_2026.11.5.9_linux_amd64.tar.gz"
      sha256 "22e421af99bccf5edc420ceaec309b4efad07822267f5ad07ee49c0060f2c713"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.9/doomer_2026.11.5.9_linux_arm64.tar.gz"
      sha256 "d950eb4f89de3d0f982b5b162ae987236526fef628d4217acd3b2fa072753256"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
