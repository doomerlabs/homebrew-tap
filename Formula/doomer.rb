class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.5.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.1/doomer_2026.11.5.1_darwin_amd64.tar.gz"
      sha256 "a62e22ec6ad1ad5142a79408d1d9ad4235326e2914f28514d62844ce3f6f5d1b"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.1/doomer_2026.11.5.1_darwin_arm64.tar.gz"
      sha256 "1caae4371aacdec1654cd8f3e5196cdca894fef85dc8f3b4ecf291c8eba39b08"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.1/doomer_2026.11.5.1_linux_amd64.tar.gz"
      sha256 "cf0bc037b1f463b76bf18c07bf2b6e9b9cfc88ca21442cf9b8dc6db1aee85ad8"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.5.1/doomer_2026.11.5.1_linux_arm64.tar.gz"
      sha256 "9fef333765870ef2d875f28e261e4284701815aac962bb3f1171eef0b68fe23c"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
