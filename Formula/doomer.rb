class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.5.6"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.6/doomer_2026.11.5.6_darwin_amd64.tar.gz"
      sha256 "c3ffd842d805b9e6b1a33352284e6aa576fcca8fe9eda4379cc5394168a69010"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.6/doomer_2026.11.5.6_darwin_arm64.tar.gz"
      sha256 "b6d791fdc92c6520445af94774c2bd7cde908a614c31583e7bec5ba5adeb5ce3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.6/doomer_2026.11.5.6_linux_amd64.tar.gz"
      sha256 "6dfecffb835faf7a20943fc0a802b5685de7dfe1ebb206f616473134db832251"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.6/doomer_2026.11.5.6_linux_arm64.tar.gz"
      sha256 "205c10cbcdb318485aa9dfff681ec6a45242ddea29a1b16d43288468c9dc2f34"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
