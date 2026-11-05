class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.5.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.2/doomer_2026.11.5.2_darwin_amd64.tar.gz"
      sha256 "5bb232aebdc8ac76b0bf17ab1a8a631ac110f689e0207629ac8f7ae7278d9b40"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.2/doomer_2026.11.5.2_darwin_arm64.tar.gz"
      sha256 "a61a68e7486f49c0bb23638230a03b9ec9a0f665e2eaee8c3662e1d3c8240ede"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.2/doomer_2026.11.5.2_linux_amd64.tar.gz"
      sha256 "5c64733f346a0a11b59b614d640612e1528569300c1a66e019ce8db6ea63fbb5"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.2/doomer_2026.11.5.2_linux_arm64.tar.gz"
      sha256 "abedd545d42c4bcdfce28240d0e1b9581dd0eb1831dac89a69bc0dae80031643"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
