class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.10.17-beta.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.17-beta.1/doomer_2026.10.17-beta.1_darwin_amd64.tar.gz"
      sha256 "47e8428d1f13b55fa0cc6406bc63c8d2a1b72b4aafb0a080901d55ad641316c0"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.17-beta.1/doomer_2026.10.17-beta.1_darwin_arm64.tar.gz"
      sha256 "ea8080cbca51df30125aca7e934156d7bf13e07c573096d4f611f31010111b5b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.17-beta.1/doomer_2026.10.17-beta.1_linux_amd64.tar.gz"
      sha256 "c74d422d21c7572484556c586c38c187dc91ea207fd9320e788e8ca3c8af14ab"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.17-beta.1/doomer_2026.10.17-beta.1_linux_arm64.tar.gz"
      sha256 "0a945be23f60725aaac99cb8e91582333ec142e6dcbf0920a77ac0ab9a9690a2"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
