class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.5.7"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.7/doomer_2026.11.5.7_darwin_amd64.tar.gz"
      sha256 "7852545b7e83aeb3debd778714fd7ff1c3d6bac2168daab8e1bacd435f9d831c"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.7/doomer_2026.11.5.7_darwin_arm64.tar.gz"
      sha256 "8a77f605c1db79278cf975e2f111c9c1ab54f390bbe102c76f432f7455342480"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.7/doomer_2026.11.5.7_linux_amd64.tar.gz"
      sha256 "fa030788e5e1923c3de2d95c3219ac01f506b3a9be5db9f482633e9a79a73dad"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.7/doomer_2026.11.5.7_linux_arm64.tar.gz"
      sha256 "697641d14c9a97f544d7400564efe99042da252e1ea148fd56f2f25143e9f341"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
