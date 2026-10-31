class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.10.31-beta.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.31-beta.1/doomer_2026.10.31-beta.1_darwin_amd64.tar.gz"
      sha256 "03378b7e6d128bf88bdae65bfd2efad21afccad35b5c93a3ae2af51af112ebfc"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.31-beta.1/doomer_2026.10.31-beta.1_darwin_arm64.tar.gz"
      sha256 "b284d6f48ebbec2319ba26173429a9d61cd3346f54b65d9c50803c65d9960d7d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.31-beta.1/doomer_2026.10.31-beta.1_linux_amd64.tar.gz"
      sha256 "3e8c2e6ab224f1b26ecb2d5d7cb323c7378de693fa03a42bbb2db56fac3b9842"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.31-beta.1/doomer_2026.10.31-beta.1_linux_arm64.tar.gz"
      sha256 "cb2a1a553b12392a51f6f99bad410afb99ebeff9fd97126be2df6c0373064615"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
