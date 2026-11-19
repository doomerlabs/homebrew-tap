class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.18.4-beta.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.18.4-beta.1/doomer_2026.11.18.4-beta.1_darwin_amd64.tar.gz"
      sha256 "24fc903cba1461756a32c6fda43e4e275573d540253f9a521e509ea6f3e805b9"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.18.4-beta.1/doomer_2026.11.18.4-beta.1_darwin_arm64.tar.gz"
      sha256 "3b395141df4ab3b1eec2584c0df8fdd63b6ca686dc2e582da58fcb9a0f44d0b7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.18.4-beta.1/doomer_2026.11.18.4-beta.1_linux_amd64.tar.gz"
      sha256 "48792829f0c8c11070950ef0b457b0d1af08dcf6445c9618b0c89fb20430c6c6"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.18.4-beta.1/doomer_2026.11.18.4-beta.1_linux_arm64.tar.gz"
      sha256 "a6a6743429f9ca2a6155ce60dbc94fc4cbd6295eac3b1ae850ec05a2df4242be"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
