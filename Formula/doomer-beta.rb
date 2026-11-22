class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.22.1-beta.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.22.1-beta.3/doomer_2026.11.22.1-beta.3_darwin_amd64.tar.gz"
      sha256 "bdaed951bd117008b06d15071380225c342c8caebab0996379393e52665e6f90"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.22.1-beta.3/doomer_2026.11.22.1-beta.3_darwin_arm64.tar.gz"
      sha256 "fd92f5e09eff73f571086e37115ef71f813e05f7753ef27725ffdf35f22f7117"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.22.1-beta.3/doomer_2026.11.22.1-beta.3_linux_amd64.tar.gz"
      sha256 "37802d7e1ac6bd3d66e57ea98fe037d66fb71a6d7ac5b4310e3138b9b1507939"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.22.1-beta.3/doomer_2026.11.22.1-beta.3_linux_arm64.tar.gz"
      sha256 "1c8db2834ad388b4f3c8be84c1a1a4faeedc87eef61c0a760a81788c334c11e7"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
