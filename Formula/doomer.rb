class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.6.9"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.9/doomer_2026.11.6.9_darwin_amd64.tar.gz"
      sha256 "6a1807554962ec31d0006d3f265448ec158264e29d735446342d8ad0856e8e39"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.9/doomer_2026.11.6.9_darwin_arm64.tar.gz"
      sha256 "74261ae1e80ef819d953e748ceadbb91ddde09a202e6835612e88f4d9eab092a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.9/doomer_2026.11.6.9_linux_amd64.tar.gz"
      sha256 "96705e4663ebd23a07115dfcc63d198f2a191f307d83d33c516f366dfb926cda"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.9/doomer_2026.11.6.9_linux_arm64.tar.gz"
      sha256 "4b076cb473c405d2e7b6453bb2e0367c3d5e0ec72b296f190ec8d3e84516f0c1"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
