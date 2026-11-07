class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.7.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.7.2/doomer_2026.11.7.2_darwin_amd64.tar.gz"
      sha256 "0c8bd4c220cdae48bf2ada00b02f7c127b9b4f643473dfa87c866a2c9694d2d3"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.7.2/doomer_2026.11.7.2_darwin_arm64.tar.gz"
      sha256 "b23b25c352f50b1e426c4e0200c4b30fcc11a557ee68e6103020267ece4ae774"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.7.2/doomer_2026.11.7.2_linux_amd64.tar.gz"
      sha256 "e45e553f38110369bbfb69f919d182ea9b1b588494e7197603e47c218eebe012"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.7.2/doomer_2026.11.7.2_linux_arm64.tar.gz"
      sha256 "a19b9929eaa7d14be05a86ec2a177cedd483cdbed8d8dfe42598015cd865232e"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
