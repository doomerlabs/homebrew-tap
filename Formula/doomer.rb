class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.4.4"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.4.4/doomer_2026.11.4.4_darwin_amd64.tar.gz"
      sha256 "338229098505d9dc05f962312014bea0696a458b3fba1cbf13db24d058f933c9"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.4.4/doomer_2026.11.4.4_darwin_arm64.tar.gz"
      sha256 "ef64c1f558a6a7c717a975560f3106c3ca0a7be2468ac86ebb910d9140ca60e1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.4.4/doomer_2026.11.4.4_linux_amd64.tar.gz"
      sha256 "c0dd72862fcfbd3f24d46eb8c3674555d69c0ed20ea3707d472dd16d1f9d876d"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.4.4/doomer_2026.11.4.4_linux_arm64.tar.gz"
      sha256 "273426df70e5c71361a5928e397e2e636b4412351d047022e7edc9ebf03aa1fd"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
