class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.2.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.2.1/doomer_2026.11.2.1_darwin_amd64.tar.gz"
      sha256 "8a4a9acef873918530ba56119757a40d263e41673b6b5d88c7a3b93cce8caa80"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.2.1/doomer_2026.11.2.1_darwin_arm64.tar.gz"
      sha256 "57f5e03d3db0aab5d206c014f1943cc1e72a967d7149b540b98387935b0cfb20"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.2.1/doomer_2026.11.2.1_linux_amd64.tar.gz"
      sha256 "03eeec3d09d85afa091d543c50d95060858c0b5a7d3159030ae0f9224e199d19"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.2.1/doomer_2026.11.2.1_linux_arm64.tar.gz"
      sha256 "1a5b6debfc69b6b098157ae9d8a6bed846bcf51f31e2da8d57f2827c462b0d95"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
