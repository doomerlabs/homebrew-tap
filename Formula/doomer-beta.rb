class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.23.1-beta.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.23.1-beta.1/doomer_2026.11.23.1-beta.1_darwin_amd64.tar.gz"
      sha256 "ea5bd69f67f49de2ed28946b1d8438d27edf94397fa4d3b61a79f7744530966e"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.23.1-beta.1/doomer_2026.11.23.1-beta.1_darwin_arm64.tar.gz"
      sha256 "c8aa6e4f904c97f5d28386684103af29049af56717b6780d0f388e9988d5c73a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.23.1-beta.1/doomer_2026.11.23.1-beta.1_linux_amd64.tar.gz"
      sha256 "82b7ee153e4ea4b1681ed28e69d9323b20894c220084dd54a1abdd876a7b7e7a"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.23.1-beta.1/doomer_2026.11.23.1-beta.1_linux_arm64.tar.gz"
      sha256 "540ed36a6c8cb834beda8d8abd721e2e8a89e039bc2f57a1db8c06f7ed6cb68e"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
