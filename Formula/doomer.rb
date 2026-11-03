class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.3.4"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.3.4/doomer_2026.11.3.4_darwin_amd64.tar.gz"
      sha256 "d37672a85148935d8501e6c9d712efe14bc474a3e5b6f2f3658afa1a3ca4e635"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.3.4/doomer_2026.11.3.4_darwin_arm64.tar.gz"
      sha256 "20aa8d6165a4969614d02b0896428ce3a8a5db72b148267849e5f468bf4ae7ad"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.3.4/doomer_2026.11.3.4_linux_amd64.tar.gz"
      sha256 "c3156f8d12b5c628d52a85bb5c39d1ecb7155652bb6053e80ea27b12678044f9"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.3.4/doomer_2026.11.3.4_linux_arm64.tar.gz"
      sha256 "28a672b5ff4efda5a36ae431560f6e04949550b0e8ef87213617fb8cff4253ec"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
