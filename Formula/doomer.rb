class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.3.5"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.3.5/doomer_2026.11.3.5_darwin_amd64.tar.gz"
      sha256 "c8cd5b4f16c44b1787faafca3ad9262fa5ef896f4a29255c45af5892f69dd89b"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.3.5/doomer_2026.11.3.5_darwin_arm64.tar.gz"
      sha256 "fbb8e2fb3871ee1627774fd371129265f199152c16cae17ace274bc6fe7afa0f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.3.5/doomer_2026.11.3.5_linux_amd64.tar.gz"
      sha256 "7d549b743bfd873f419f573d0f680c0daf23a660babf400fe854e4b83e06abb2"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.3.5/doomer_2026.11.3.5_linux_arm64.tar.gz"
      sha256 "271fd396d43ec1db0ec07554ee20fb871553a8154aa267fcc6e74ea5df39476f"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
