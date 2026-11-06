class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.6.12"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.12/doomer_2026.11.6.12_darwin_amd64.tar.gz"
      sha256 "a141264d1df3c2d8a438b96d25f9ac8568b77bd50f58940ea252e88116d25046"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.12/doomer_2026.11.6.12_darwin_arm64.tar.gz"
      sha256 "1ae2030d781ab830f926a0b5f33b98d7a64a0c28682776bfd93a00e45c072321"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.12/doomer_2026.11.6.12_linux_amd64.tar.gz"
      sha256 "545e430521e08c90bfcbc737ce68ffc8da2f2901483ae694b27583009336d0f1"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.12/doomer_2026.11.6.12_linux_arm64.tar.gz"
      sha256 "a4dceface342909171b120d13ca9cff28c9fa2d621e5a1608c85cd9cdb0baf15"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
