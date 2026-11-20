class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.19.1-beta.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.19.1-beta.2/doomer_2026.11.19.1-beta.2_darwin_amd64.tar.gz"
      sha256 "8d0d6cdbdbf18035b760b875c5fd0c3818f6f9cbd7910e620ad289fcdcd50678"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.19.1-beta.2/doomer_2026.11.19.1-beta.2_darwin_arm64.tar.gz"
      sha256 "741f48b8d577c2b117237674c384c3ce1ee86ed2ca6a3e83a1a5b85d4c87e246"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.19.1-beta.2/doomer_2026.11.19.1-beta.2_linux_amd64.tar.gz"
      sha256 "8a2d2bc5158d00c6a20723cd5e369a9913728437bf1a03d6d777720d9d3bcbbd"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.19.1-beta.2/doomer_2026.11.19.1-beta.2_linux_arm64.tar.gz"
      sha256 "20ff4a99fc4ac2b656fbce9a9c14f6760b308d9f4e7919da6e848b006156b703"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
