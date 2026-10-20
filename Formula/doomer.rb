class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.10.20"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.20/doomer_2026.10.20_darwin_amd64.tar.gz"
      sha256 "c6eea3f3d7960251ed85013cdbe84c9be64795baa74c3d7ac9126beb69d6d8cd"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.20/doomer_2026.10.20_darwin_arm64.tar.gz"
      sha256 "f0621746f25e5c1bbdb79ba796544d66014a9d72b6496bcd8640eeea0bfe1e90"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.20/doomer_2026.10.20_linux_amd64.tar.gz"
      sha256 "c379a6121ab1a196beaea03e7ee0ef105debabcbe8bd95f002b76f2d770f834b"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.20/doomer_2026.10.20_linux_arm64.tar.gz"
      sha256 "b54c9216b3811b3c64824f2dbf05d206b678943e2efb4f8fb6ca8dde8950bf8d"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
