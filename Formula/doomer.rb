class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.10.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.1/doomer_2026.10.1_darwin_amd64.tar.gz"
      sha256 "584771e9923705a3d468aa4ca132fde5c2705fae46a4bd48d8b04a48387af79f"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.1/doomer_2026.10.1_darwin_arm64.tar.gz"
      sha256 "31f79e915f241ec7717e1cb11add260acfe7c127193036ee91d8c2b5ad9289dd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.1/doomer_2026.10.1_linux_amd64.tar.gz"
      sha256 "2e975b9456719db06b10e9b2f1d785869150893e1f751ee82bc147a7d3854eab"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.1/doomer_2026.10.1_linux_arm64.tar.gz"
      sha256 "1a9c88ce761e91cce5b655351238a428e52b70028f44e001bc1b681903189ead"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
