class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.9.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.9.3/doomer_2026.11.9.3_darwin_amd64.tar.gz"
      sha256 "1f16c0f74347a034aa4c01506f9ce14dcba797c014317366e4e007c8100e0b1c"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.9.3/doomer_2026.11.9.3_darwin_arm64.tar.gz"
      sha256 "0357bc5740c5c6b0be37e4daf0fbb157d60b9768ca058fbaee46091acec60959"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.9.3/doomer_2026.11.9.3_linux_amd64.tar.gz"
      sha256 "f76dfcfa66b3aa9859614a5770a6539353b1103b5bd6975587d1a170dbe2b2ea"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.9.3/doomer_2026.11.9.3_linux_arm64.tar.gz"
      sha256 "a1e7da2a3b3f077899dc71d76969d4ac9046e61370c70d50c3d726c9c6621f1e"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
