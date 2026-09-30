class DoomerBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.9.30-beta.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.30-beta.3/doomer_2026.9.30-beta.3_darwin_amd64.tar.gz"
      sha256 "fa8cf819d05fd9c05f5afb0eab0792a3e2498985d338818b9f0ed4092b585bf3"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.30-beta.3/doomer_2026.9.30-beta.3_darwin_arm64.tar.gz"
      sha256 "e26db1decb7fa7fc4f47307678eb8e9293b68b28049499e1d7860bc00300ca5d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.30-beta.3/doomer_2026.9.30-beta.3_linux_amd64.tar.gz"
      sha256 "cf28e7d14c037e63017a616b2cacab788ddba6e582e35c5c4fe869aea1975455"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.30-beta.3/doomer_2026.9.30-beta.3_linux_arm64.tar.gz"
      sha256 "8076b54847b8e5f2b9f7658d9888d59d9e427359e7ec28109aaf4b6004b61977"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
