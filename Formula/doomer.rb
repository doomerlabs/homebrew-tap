class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.3.7"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.3.7/doomer_2026.11.3.7_darwin_amd64.tar.gz"
      sha256 "732ca9647e5dec2ac76a177d3d8e503ea6c4439b4014372278c2608c322075f4"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.3.7/doomer_2026.11.3.7_darwin_arm64.tar.gz"
      sha256 "b633ff2e498f462c1a1336d9c4ae83b1a3c7c3f7fd227b98e14f62d293c32e2c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.3.7/doomer_2026.11.3.7_linux_amd64.tar.gz"
      sha256 "30678374bb7e3834fbf5518e532fa202aaa890d1c0f4dec0b1f15f37debe4bdf"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.3.7/doomer_2026.11.3.7_linux_arm64.tar.gz"
      sha256 "1b3b9f37c0af1e7d60f729c2771f074c5e0fd0b38c88cddcaa0040bc6a5e592b"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
