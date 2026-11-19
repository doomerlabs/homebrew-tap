class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.18.3-beta.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.18.3-beta.1/doomer_2026.11.18.3-beta.1_darwin_amd64.tar.gz"
      sha256 "7a213cf8df502e0d5b4005c213d8b0d640f1363c27476ab94191a56a0ee0fd9f"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.18.3-beta.1/doomer_2026.11.18.3-beta.1_darwin_arm64.tar.gz"
      sha256 "d87a76b86762667b8513e5fd45f4f68561ba5808dd0ea03b5dc88ccf63fe5dc8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.18.3-beta.1/doomer_2026.11.18.3-beta.1_linux_amd64.tar.gz"
      sha256 "f1b676d3ee081685a8cfbf909ac25675e165b53b1e27a58804014d234329ee3c"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.18.3-beta.1/doomer_2026.11.18.3-beta.1_linux_arm64.tar.gz"
      sha256 "c2e242f43570509b0830495bbae67be0dd4bc34afebbd592bd9fab3ac8b1f6dd"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
