class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.13.1-beta.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.13.1-beta.2/doomer_2026.11.13.1-beta.2_darwin_amd64.tar.gz"
      sha256 "35b9d574a4f9c109279c067558fd238c6fea251663c3f7889452802cfb030ff8"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.13.1-beta.2/doomer_2026.11.13.1-beta.2_darwin_arm64.tar.gz"
      sha256 "b33923916a4bb591d547db23b85019e83ff1c79fdad3cc3a12d72b1b1ae55143"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.13.1-beta.2/doomer_2026.11.13.1-beta.2_linux_amd64.tar.gz"
      sha256 "8ad7113506e8385ab64788d290986251dcfbec5f7e30c2077162e80a603f288f"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.13.1-beta.2/doomer_2026.11.13.1-beta.2_linux_arm64.tar.gz"
      sha256 "cf4e071250d540d18b1ed40e81a6b6efef4fad5122e6621efefc5d85b62b2d9a"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
