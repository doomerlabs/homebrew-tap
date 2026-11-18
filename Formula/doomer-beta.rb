class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.17.2-beta.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.17.2-beta.1/doomer_2026.11.17.2-beta.1_darwin_amd64.tar.gz"
      sha256 "996cf3b0e7f3cd05dceb54e4db4684e0239824c82f87b2645809db2751049979"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.17.2-beta.1/doomer_2026.11.17.2-beta.1_darwin_arm64.tar.gz"
      sha256 "f0321b9ab4672b35e5fb4b3f2ff9fb3ab27ff47e0080f4f83483231dbad007d7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.17.2-beta.1/doomer_2026.11.17.2-beta.1_linux_amd64.tar.gz"
      sha256 "e2038b88b559475d2d023a27f36445e01fa1e7b42f0ba48028a59f1cf1216bb7"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.17.2-beta.1/doomer_2026.11.17.2-beta.1_linux_arm64.tar.gz"
      sha256 "827a2cd73fb895f8e089fd9aa37a662c3c844f1710c240edf4b6402bd7a18c22"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
