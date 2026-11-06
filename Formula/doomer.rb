class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.5.8"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.8/doomer_2026.11.5.8_darwin_amd64.tar.gz"
      sha256 "78a7d7f3a1e19276c0749ea0e5216d3b678badb296d219e91aac219a9c49a4e7"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.8/doomer_2026.11.5.8_darwin_arm64.tar.gz"
      sha256 "a340aa37d9cb599247f4a94c161f25cf290d75704accd6ac1bbf32ded6ec08a5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.8/doomer_2026.11.5.8_linux_amd64.tar.gz"
      sha256 "1d4eea46a8eaf0ea0ff02fac14adb700c9920132c9df91694d61f58de81b040d"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.8/doomer_2026.11.5.8_linux_arm64.tar.gz"
      sha256 "e721069bf789d50d69d4b204fda15d771219943438a090eaf86ebde9136fd3c6"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
