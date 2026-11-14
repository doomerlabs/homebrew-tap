class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.14.1-beta.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.14.1-beta.1/doomer_2026.11.14.1-beta.1_darwin_amd64.tar.gz"
      sha256 "82d53feae0418285ddf89f6c719ee13f594cea51d5e7d019034e17df9ca5eded"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.14.1-beta.1/doomer_2026.11.14.1-beta.1_darwin_arm64.tar.gz"
      sha256 "4625dcc6a640eb8b439a2b70e0878334cc99357e2ca83427d38c010880ecb41c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.14.1-beta.1/doomer_2026.11.14.1-beta.1_linux_amd64.tar.gz"
      sha256 "35d45067a2fbd0f230520cda3c22b20559413db122b607aa70f2a3f32fc908a5"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.14.1-beta.1/doomer_2026.11.14.1-beta.1_linux_arm64.tar.gz"
      sha256 "4a8e91c788f472f94a293134d133a9a9afcd04df53c2d74bdfe8583656c79b63"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
