class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.6.8"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.8/doomer_2026.11.6.8_darwin_amd64.tar.gz"
      sha256 "63719dca8a6d1f3a8e28013772f673c867dd0ab44d9eb38ea3250d61ffa51519"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.8/doomer_2026.11.6.8_darwin_arm64.tar.gz"
      sha256 "53a39dc88239e9b02bd69051adec716d25c27603043fb634ab0fe1fdfb0e17fb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.8/doomer_2026.11.6.8_linux_amd64.tar.gz"
      sha256 "84b31981054959ff784ceb780c29de86d797c4096ceda26573ddc513ea4da128"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.8/doomer_2026.11.6.8_linux_arm64.tar.gz"
      sha256 "60719559606f8735161b7d49a2a6fd6a1fce89dbd758fc0119bf47a9b25daeaf"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
