class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.23.1-beta.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.23.1-beta.2/doomer_2026.11.23.1-beta.2_darwin_amd64.tar.gz"
      sha256 "1f5e4b2c5fc31404bfa6a0d269055436fd0ada65b74526009eccd655ed9170f3"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.23.1-beta.2/doomer_2026.11.23.1-beta.2_darwin_arm64.tar.gz"
      sha256 "8ebdb6c94e90b9a2402ce0a9c96eabde9132327b63e5f7301a42856917b8a8c4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.23.1-beta.2/doomer_2026.11.23.1-beta.2_linux_amd64.tar.gz"
      sha256 "2690ecd3b785a8432f8aa534c197699c59ec08f6eb92b3596216df8b3d853b85"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.23.1-beta.2/doomer_2026.11.23.1-beta.2_linux_arm64.tar.gz"
      sha256 "042144e4c1ae1a4c3f598a812bfdbd69e79dabf506f2145d120ed3add76e9241"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
