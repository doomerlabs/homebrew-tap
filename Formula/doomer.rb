class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.4.5"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.4.5/doomer_2026.11.4.5_darwin_amd64.tar.gz"
      sha256 "bd26bfce89ff5fd7b8c07dc19f21ae0de747308886bd159a5ab4a00f04c75c2d"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.4.5/doomer_2026.11.4.5_darwin_arm64.tar.gz"
      sha256 "1364c4fb33fa63fe449fabb6fcd378879e7f211817b5e4f2680b652b4db80e02"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.4.5/doomer_2026.11.4.5_linux_amd64.tar.gz"
      sha256 "f333ce3303ecd5a53454d87d71b99dab94916ff39b70ef5aa7a86410ad474403"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.4.5/doomer_2026.11.4.5_linux_arm64.tar.gz"
      sha256 "837ead5d4c8e34067d7e40934d9a3102fdbc575c50adfc423221b3a197400b28"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
