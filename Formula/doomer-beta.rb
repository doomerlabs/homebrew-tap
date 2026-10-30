class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.10.30-beta.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.30-beta.2/doomer_2026.10.30-beta.2_darwin_amd64.tar.gz"
      sha256 "ca45f05dee5adfb23f5eac63b540bb60be5f5e60dbc8530966b81f4f1475f3b3"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.30-beta.2/doomer_2026.10.30-beta.2_darwin_arm64.tar.gz"
      sha256 "aea8b03c831746797901ed57763d39e1caa55dcc14652dcaa9815ed6a69c8125"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.30-beta.2/doomer_2026.10.30-beta.2_linux_amd64.tar.gz"
      sha256 "a7cdd8db91b91673dba0b253fec65741dbdfb141fcbd03fb76892ef9934cbee6"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.30-beta.2/doomer_2026.10.30-beta.2_linux_arm64.tar.gz"
      sha256 "1634a742ccd572ddb03aa5959dc3ed07471571e1fb3417c655a7081a7032bcf6"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
