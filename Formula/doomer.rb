class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.10.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.10.2/doomer_2026.11.10.2_darwin_amd64.tar.gz"
      sha256 "62ec65b11040835e0ea64d6c3aa1638c4665bb7de6be52c07cb6a630136e365d"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.10.2/doomer_2026.11.10.2_darwin_arm64.tar.gz"
      sha256 "0b2a03b19f25d74e7fa353a53ce0cca2f0311c42a1161c179b2e89428ab4374f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.10.2/doomer_2026.11.10.2_linux_amd64.tar.gz"
      sha256 "050792b67e509f786e6fd1b894742ad6915c486ed70fc5be28fa512d2cf66e70"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.10.2/doomer_2026.11.10.2_linux_arm64.tar.gz"
      sha256 "e44fdc3a8a6c106bbaef183c2799c6b2362f27ca740a3b9bd26388daaddaba31"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
