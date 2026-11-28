class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.28.1-beta.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.28.1-beta.1/doomer_2026.11.28.1-beta.1_darwin_amd64.tar.gz"
      sha256 "7fc1ee30194d5c916de305afaba14235fae046fb5458af7ca78b46539b06c6d9"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.28.1-beta.1/doomer_2026.11.28.1-beta.1_darwin_arm64.tar.gz"
      sha256 "b16781e86d22ca23ed0022793d6fc1cdebc78a0e72404103455a5e1d9e586ac6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.28.1-beta.1/doomer_2026.11.28.1-beta.1_linux_amd64.tar.gz"
      sha256 "2a7a1abbf0b2728e95151cdb43917450f9c5d09da3191cd9fecf2f9d1f7ee8f2"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.28.1-beta.1/doomer_2026.11.28.1-beta.1_linux_arm64.tar.gz"
      sha256 "42f2dbf745a66f24087fcaf0736bd1c4d429fe946f0c93c6df743b25a7b3dfa4"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
