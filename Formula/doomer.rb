class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.6.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.3/doomer_2026.11.6.3_darwin_amd64.tar.gz"
      sha256 "f914a0ed68cc151c06718190187c10512dd059b943373e60d74503f2965c4fb3"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.3/doomer_2026.11.6.3_darwin_arm64.tar.gz"
      sha256 "b7e25a7209497af2a60261640515f051d894331b3d04db25750e7c71563f7f27"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.3/doomer_2026.11.6.3_linux_amd64.tar.gz"
      sha256 "8c663deabefb1ab9b112d38fc6cfc966bf621a43aff056331f3698cdc90990f9"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.3/doomer_2026.11.6.3_linux_arm64.tar.gz"
      sha256 "4333c48d926b0c2694e2f03bf2897dc9497e555b281f8becd097db35f51b527f"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
