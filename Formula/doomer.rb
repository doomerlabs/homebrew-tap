class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.4.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.4.2/doomer_2026.11.4.2_darwin_amd64.tar.gz"
      sha256 "e469f1cfe18f942b94dc751f2abc0833547a84c6a904911477eb109fbc6ce54c"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.4.2/doomer_2026.11.4.2_darwin_arm64.tar.gz"
      sha256 "2d556b7917a63d2194dd53ade39ae59fdec632afae71bb4aa53b6d80323cc720"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.4.2/doomer_2026.11.4.2_linux_amd64.tar.gz"
      sha256 "c280626c1c16ab8d192430054fa9f07916973e15ae695c6dfc32d6675413ea65"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.4.2/doomer_2026.11.4.2_linux_arm64.tar.gz"
      sha256 "a5decdf9f6320004d4c2b7004050c0680efcd16b1604f9c211d0f5f400dd0fe7"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
