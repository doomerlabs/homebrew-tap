class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.10.18-beta.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.18-beta.1/doomer_2026.10.18-beta.1_darwin_amd64.tar.gz"
      sha256 "ba3db54fe9d03d5154c769daba85434fc098de290ac572f7491982f8e6686857"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.18-beta.1/doomer_2026.10.18-beta.1_darwin_arm64.tar.gz"
      sha256 "9cf1a0fa83997c311a78d40d38e31ec21cafb6b99e1458267016c921e0517df0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.18-beta.1/doomer_2026.10.18-beta.1_linux_amd64.tar.gz"
      sha256 "3d94f6e45e3aec88114316a56d793ac6557a508e18d2cb3be7122c14ab48aeac"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.18-beta.1/doomer_2026.10.18-beta.1_linux_arm64.tar.gz"
      sha256 "b099261470d5cc1b315c8109f583e65c43bd5d4561920ecfcadc333ed1610434"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
