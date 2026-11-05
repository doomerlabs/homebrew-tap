class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.5.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.3/doomer_2026.11.5.3_darwin_amd64.tar.gz"
      sha256 "3f251bd5d27bf888266ce41cbfb8aa3a564e1d17fe48684bd31504049721db71"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.3/doomer_2026.11.5.3_darwin_arm64.tar.gz"
      sha256 "e98715ec913dcde6687804935e1dd2c4c60446047e684866ce213234c3c09968"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.3/doomer_2026.11.5.3_linux_amd64.tar.gz"
      sha256 "0152bcd94e48cad831e864891d97d0da284a599e5f3f447bc750a4d2d04f3cda"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.3/doomer_2026.11.5.3_linux_arm64.tar.gz"
      sha256 "8db6fa3380106bcad9fe5900af38ef5a1473638db13d1ec51bdfd6157da01f9d"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
