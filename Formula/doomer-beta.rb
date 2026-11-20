class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.19.1-beta.4"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.19.1-beta.4/doomer_2026.11.19.1-beta.4_darwin_amd64.tar.gz"
      sha256 "50a9f8f2a8d012d268217470570ac6b585e356f483492520c29d936369dccd89"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.19.1-beta.4/doomer_2026.11.19.1-beta.4_darwin_arm64.tar.gz"
      sha256 "f6848866dc3ad8336c644a3a2b566f411c131c0422c836d040c693fe535de939"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.19.1-beta.4/doomer_2026.11.19.1-beta.4_linux_amd64.tar.gz"
      sha256 "bf9829cafbb33efde3553d3c98d407a9195ea3770ff890984a62becc2fc96ae2"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.19.1-beta.4/doomer_2026.11.19.1-beta.4_linux_arm64.tar.gz"
      sha256 "ca8024e404feeabd1372ae72f4a97ef2e8e4d71655a55756a280335decaa23d2"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
