class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.18.6-beta.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.18.6-beta.1/doomer_2026.11.18.6-beta.1_darwin_amd64.tar.gz"
      sha256 "ca535a572f3fed279e4562bd4ffefaf33184019e61d1caa3a1d3fe88c75a9dcd"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.18.6-beta.1/doomer_2026.11.18.6-beta.1_darwin_arm64.tar.gz"
      sha256 "e0ccd098dab33d4704ffe9e734bb401117d44419135fc88e1ea0a7792e93d7fb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.18.6-beta.1/doomer_2026.11.18.6-beta.1_linux_amd64.tar.gz"
      sha256 "2ab03f2f696606afe2d215c6af1784592eef3be43cbfc28d360e1e914843f75c"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.18.6-beta.1/doomer_2026.11.18.6-beta.1_linux_arm64.tar.gz"
      sha256 "d43eb0cd04fa64fa73436f71d9d82c27133b4f90263f0df9dae5bae310b299c6"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
