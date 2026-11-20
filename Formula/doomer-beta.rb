class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.19.1-beta.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.19.1-beta.3/doomer_2026.11.19.1-beta.3_darwin_amd64.tar.gz"
      sha256 "deda0a68fcaeab1b8dfe9121cd5feff8ccbc09333ea5212f460cb2ca83ff5b05"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.19.1-beta.3/doomer_2026.11.19.1-beta.3_darwin_arm64.tar.gz"
      sha256 "216912978c424d3316ce239f4a568404c85217b289b7429b33882ca6c08d3173"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.19.1-beta.3/doomer_2026.11.19.1-beta.3_linux_amd64.tar.gz"
      sha256 "d7567a7503bcc47cbde3badf409830dcb043bdfeeeb4dd5b9ae8ea0cd11aa49f"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.19.1-beta.3/doomer_2026.11.19.1-beta.3_linux_arm64.tar.gz"
      sha256 "444a3af8e901ca71166d6216324bcbdaccbdd15594b803c796daef5300693979"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
