class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.3.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.3.2/doomer_2026.11.3.2_darwin_amd64.tar.gz"
      sha256 "1129fcd1d0ca9c033c799dd7e71d7dc7730f14bd08de1e81d3cf9514f40da151"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.3.2/doomer_2026.11.3.2_darwin_arm64.tar.gz"
      sha256 "71ebfc8ce47256a3d415bac19d7ba45d66e81bde86cecfb65d39016afd666600"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.3.2/doomer_2026.11.3.2_linux_amd64.tar.gz"
      sha256 "82daf34ea4a4fb2e08a8b3d709253aacfba8b498eaf04faf0b8196cf7305ad09"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.3.2/doomer_2026.11.3.2_linux_arm64.tar.gz"
      sha256 "b0491297223a1bb859c16e18e03e65874a79bf997aad1f0595cb910701b0e75a"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
