class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.5.5"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.5/doomer_2026.11.5.5_darwin_amd64.tar.gz"
      sha256 "973450673250430813d739e56465afe8b899549585583c55ae6d11d3072a0c42"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.5/doomer_2026.11.5.5_darwin_arm64.tar.gz"
      sha256 "26f351d09bb17d7841677490df7cf0565cddff982a4763b400783e8f72af0f47"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.5/doomer_2026.11.5.5_linux_amd64.tar.gz"
      sha256 "aa2321c286e0119eb084a98f55860616a0b2ae754dfdf43b45f6cdaa9ea25e5d"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.5/doomer_2026.11.5.5_linux_arm64.tar.gz"
      sha256 "ee511916e0233e1047b31721090788a809132a06e17d94d8006a2aa691f3866c"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
