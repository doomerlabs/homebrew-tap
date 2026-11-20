class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.20.1-beta.4"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.20.1-beta.4/doomer_2026.11.20.1-beta.4_darwin_amd64.tar.gz"
      sha256 "47351c29119f3253bc709b2bba00c950ee7e964b321082f7ba4893a45fb16e88"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.20.1-beta.4/doomer_2026.11.20.1-beta.4_darwin_arm64.tar.gz"
      sha256 "163c79f25ce7874c7bb551144580099544e1fdd4c1b8d6e5a68410e0ff46a66f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.20.1-beta.4/doomer_2026.11.20.1-beta.4_linux_amd64.tar.gz"
      sha256 "21a73c886319b8c7b1f2ca7d9de77cb8671841b7a3a0d07223efeb70df063199"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.20.1-beta.4/doomer_2026.11.20.1-beta.4_linux_arm64.tar.gz"
      sha256 "2a8819b2c2c2fb1461174da0408a5bbe2314a6a9163f76582ce38660d8680bb4"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
