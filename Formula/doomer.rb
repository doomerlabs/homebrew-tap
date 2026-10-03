class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.10.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.0/doomer_2026.10.0_darwin_amd64.tar.gz"
      sha256 "a6605c2562bf785a8cec69190618a704c4c20dcb78be787240ad76f40a5429b1"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.0/doomer_2026.10.0_darwin_arm64.tar.gz"
      sha256 "a25a0cda7613e68cd85c6b1448af32f1dada5174e019d12740185916ef108391"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.0/doomer_2026.10.0_linux_amd64.tar.gz"
      sha256 "be316f2dff2938a96a130aabd0b193539f168946148757ae77d3116b63dca98b"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.0/doomer_2026.10.0_linux_arm64.tar.gz"
      sha256 "072153f99a4de56435e2c84368ece81637d7d4c026096fd596ce8e053b71a805"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
