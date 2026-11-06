class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.6.4"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.4/doomer_2026.11.6.4_darwin_amd64.tar.gz"
      sha256 "193f94e69e56daa5a96dc9e7899e88257cb32d26a5b8e0e12e17ea0d9dc10dde"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.4/doomer_2026.11.6.4_darwin_arm64.tar.gz"
      sha256 "fadb5691ba295735ddbcb2c7dd21952035af6e2523ab22e90158ba56f4be0c5a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.4/doomer_2026.11.6.4_linux_amd64.tar.gz"
      sha256 "95a8abff35af25e2fa955caf1f55a409ace60462b8d2f79688695e641bb1fee6"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.4/doomer_2026.11.6.4_linux_arm64.tar.gz"
      sha256 "ccd5f902cf18f1be3fa5dc803144133f722dd6a09f609a056e44cc158e319bfd"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
