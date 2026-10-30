class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.10.30-beta.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.30-beta.1/doomer_2026.10.30-beta.1_darwin_amd64.tar.gz"
      sha256 "6ca4a60ebc293e2561b40ce1e287357a45414b7bffffde696dea9f10fea4ae3e"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.30-beta.1/doomer_2026.10.30-beta.1_darwin_arm64.tar.gz"
      sha256 "c8756c778e20a2df1f6e5f044cf0d75e13867f1eaa25f5a9f42f655f1cf94227"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.30-beta.1/doomer_2026.10.30-beta.1_linux_amd64.tar.gz"
      sha256 "4b4b3c098d1d464fd9fa560b2cc651974261277fd96b0520b9fc35387840993f"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.30-beta.1/doomer_2026.10.30-beta.1_linux_arm64.tar.gz"
      sha256 "c03ef961701a8eba9e72c89b939cde89b4708e13b222b27c31ce188d052e0752"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
