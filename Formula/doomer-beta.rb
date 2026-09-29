class DoomerBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.9.30-beta.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.30-beta.1/doomer_2026.9.30-beta.1_darwin_amd64.tar.gz"
      sha256 "ab3bf6cba32e704ab8f0428e00f1afa4b6f9da848360c2ce999d4d3eba2fbc37"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.30-beta.1/doomer_2026.9.30-beta.1_darwin_arm64.tar.gz"
      sha256 "c0237615f90603e52e1297940b791f7c429ef70fecba4c1ee9efa5f65e6e4511"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.30-beta.1/doomer_2026.9.30-beta.1_linux_amd64.tar.gz"
      sha256 "e1884faee8152168314b3a2b0e4cdfacc1d6f672ab8bd66b2bfe8212c2e91d38"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.30-beta.1/doomer_2026.9.30-beta.1_linux_arm64.tar.gz"
      sha256 "d5f0bbc09fe550daa5f26e21f9e1adbd9c76dde6f0c5a4e652bb529a6b85f25d"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
