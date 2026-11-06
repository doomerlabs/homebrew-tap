class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.6.5"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.5/doomer_2026.11.6.5_darwin_amd64.tar.gz"
      sha256 "9c713855dd2e2b0c3232846b9ead2bedd7801945cfcaf52e365203308a8941c1"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.5/doomer_2026.11.6.5_darwin_arm64.tar.gz"
      sha256 "83260f77856603fcf52f3250e4b56f75b895736b8ea171f1481883e09b92d31e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.5/doomer_2026.11.6.5_linux_amd64.tar.gz"
      sha256 "8624bcc358eb84639a0b80e1718b66701456aeb71c9829927987c1a9b1dcdcd1"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.5/doomer_2026.11.6.5_linux_arm64.tar.gz"
      sha256 "094fe14eedf5005e262b67bdde20fc38940ce5da7eb7b2955949c2a912774d26"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
