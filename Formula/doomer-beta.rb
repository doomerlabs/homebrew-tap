class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.22.1-beta.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.22.1-beta.1/doomer_2026.11.22.1-beta.1_darwin_amd64.tar.gz"
      sha256 "2cf33d71c931234b88d98b074728322b2289a5be9367926c15130b0a7f84fc4f"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.22.1-beta.1/doomer_2026.11.22.1-beta.1_darwin_arm64.tar.gz"
      sha256 "4837b645a5e8805e607549101743ce9be9bcff571a3ef1d473146eb94ad8aef5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.22.1-beta.1/doomer_2026.11.22.1-beta.1_linux_amd64.tar.gz"
      sha256 "7b909a0555624cd6fa9482f6c9378753537561235bbab46fe139b6d369cfeb77"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.22.1-beta.1/doomer_2026.11.22.1-beta.1_linux_arm64.tar.gz"
      sha256 "a7ed2e4b0e004291e7f63ee7843289b9eb9cc40fe3257f82f0ce6000e9ffbb56"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
