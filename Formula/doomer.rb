class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.10.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.2/doomer_2026.10.2_darwin_amd64.tar.gz"
      sha256 "0074aa8e87084dda80a66fc37afd31b23681fe20d407a9b2006d635cd80ed66e"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.2/doomer_2026.10.2_darwin_arm64.tar.gz"
      sha256 "e9c48bcb601d8852b0dce9237af3304f3075d43f8a82e1d4225eee5ee3efa644"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.2/doomer_2026.10.2_linux_amd64.tar.gz"
      sha256 "ad5894a642fcbd996e8840edd2d4020381862ca7e96f5c6cd9ee414b616bf465"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.2/doomer_2026.10.2_linux_arm64.tar.gz"
      sha256 "108a07f6471bcf5428b472b66b69e2fae58b9ddfe6af76f867e98f27d58ae0d5"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
