class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.8.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.8.3/doomer_2026.11.8.3_darwin_amd64.tar.gz"
      sha256 "51cd1e79db8d0a6be02949af893938a95444339eb8d50816a757c716a216c467"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.8.3/doomer_2026.11.8.3_darwin_arm64.tar.gz"
      sha256 "4a683cfd9c7da0277407acad601a2eaf462475ceaf3a2e407e1ba514af9aad1f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.8.3/doomer_2026.11.8.3_linux_amd64.tar.gz"
      sha256 "9eb032eb1309d5717ec47a355f1dc915bd736759820580131cff0a0fa0805d74"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.8.3/doomer_2026.11.8.3_linux_arm64.tar.gz"
      sha256 "8033aaae0970fcff16e76a12d1b3698e2fcb919fb2d74e22a09c3e44ea26af8b"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
