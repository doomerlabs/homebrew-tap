class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.10.30-beta.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.30-beta.3/doomer_2026.10.30-beta.3_darwin_amd64.tar.gz"
      sha256 "f8260a4eddaa45d71190d98b135093c9557688d5a998416c7ea99fc45a61173c"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.30-beta.3/doomer_2026.10.30-beta.3_darwin_arm64.tar.gz"
      sha256 "430c09459c90a133354ebb30b050c3559385d8ba32dfc722f964f5508abdd2e6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.30-beta.3/doomer_2026.10.30-beta.3_linux_amd64.tar.gz"
      sha256 "920a4cee53bf12beaf8d4bafdabf4df66a67388ae3017a40bc91d738b1d66103"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.30-beta.3/doomer_2026.10.30-beta.3_linux_arm64.tar.gz"
      sha256 "563f99946c81e02ec10a079ce28ca0012368f9024da6431e6f6ffb5efa5c42e5"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
