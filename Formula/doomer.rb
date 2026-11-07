class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.7.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.7.1/doomer_2026.11.7.1_darwin_amd64.tar.gz"
      sha256 "f4158dff27ff5bc4a4a98b115c97f5084ccdab929309da969852be3a90e004aa"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.7.1/doomer_2026.11.7.1_darwin_arm64.tar.gz"
      sha256 "34c51b1f1b456e0dd9a7cdcbfa9f21c12ce10133241694057a7558ce0a8f4609"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.7.1/doomer_2026.11.7.1_linux_amd64.tar.gz"
      sha256 "51474e92268142ab9b0649b0174294944941f0a4f62545d4ff5aedc7804affb4"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.7.1/doomer_2026.11.7.1_linux_arm64.tar.gz"
      sha256 "3f085ea21d4d913fbcdd450a1a9ccd2ec7896b45affe41788ac08e7419f79d62"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
