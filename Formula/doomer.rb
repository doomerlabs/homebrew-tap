class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.6.10"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.10/doomer_2026.11.6.10_darwin_amd64.tar.gz"
      sha256 "4a9592cb9f2a2910ae8c04b79c012f54f817414684c5c103a22755952f5e7cb2"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.10/doomer_2026.11.6.10_darwin_arm64.tar.gz"
      sha256 "f575bbfbc0c6a6560aea564693aa8fedfd049e12ec384c0175f69cd722757159"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.10/doomer_2026.11.6.10_linux_amd64.tar.gz"
      sha256 "fd33293ca7b39790de6d2b0bfa32cb4ffc09d4d45364064336f596b5b89796aa"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.10/doomer_2026.11.6.10_linux_arm64.tar.gz"
      sha256 "78df6cfd9e681c7aa196605e99b064bc54bac6afb73d09be4d3e078a85a93ec7"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
