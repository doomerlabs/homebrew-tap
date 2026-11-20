class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.20.1-beta.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.20.1-beta.1/doomer_2026.11.20.1-beta.1_darwin_amd64.tar.gz"
      sha256 "4cf7012c33e63ded6df113e155283421cdeea3a47dafd8140f6ed1b86bc52dda"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.20.1-beta.1/doomer_2026.11.20.1-beta.1_darwin_arm64.tar.gz"
      sha256 "670d9fd087bcaa4842843b3efa45599d5d6f7bb258e460c1966e569a6621cc4b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.20.1-beta.1/doomer_2026.11.20.1-beta.1_linux_amd64.tar.gz"
      sha256 "604679dfd5522617f5e50674c6e5995929468996321d23eaca5a6ca3b12d87c8"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.20.1-beta.1/doomer_2026.11.20.1-beta.1_linux_arm64.tar.gz"
      sha256 "aa06b8517ec19d5e97f812f44a35d16c55a2e85e5dd2f73114f8c7cd8bbc3d0d"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
