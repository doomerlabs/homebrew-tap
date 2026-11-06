class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.6.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.2/doomer_2026.11.6.2_darwin_amd64.tar.gz"
      sha256 "b05e8a904330e71d4483d303e5a57d52c32a8b402f198aee014d287d5a11af64"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.2/doomer_2026.11.6.2_darwin_arm64.tar.gz"
      sha256 "a641d4cf6150b0bb9ff842d038a06e574e55d5a77d63d139a8b6d726862da29f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.2/doomer_2026.11.6.2_linux_amd64.tar.gz"
      sha256 "6321094823fcd3de143780488fa92d01eba5a07b6720375f86d0f9273ab625d1"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.2/doomer_2026.11.6.2_linux_arm64.tar.gz"
      sha256 "f5a7231b030c2b316a61e7f7e700f530d68eda6b588ae021606ef084b54a0ffc"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
