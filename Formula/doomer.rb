class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.4.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.4.1/doomer_2026.11.4.1_darwin_amd64.tar.gz"
      sha256 "ec1782d291bec903ad9d5c0ac061360d6479f9ccb1c8c08df78ce614bdfa00e6"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.4.1/doomer_2026.11.4.1_darwin_arm64.tar.gz"
      sha256 "dfeefbdd40501b8da80eec6b0406176e15e7beb43ee3f5ff99044df8f65cc21c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.4.1/doomer_2026.11.4.1_linux_amd64.tar.gz"
      sha256 "d06b58c8a60ee58b73363b9a4635944df14e1e5757b00b5ca8bd23141245d0e1"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.4.1/doomer_2026.11.4.1_linux_arm64.tar.gz"
      sha256 "2f24fe6e33ce49d382730295912e0dad84ca82bee8974c48771e352ea563410a"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
