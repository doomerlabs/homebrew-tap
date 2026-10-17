class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.10.17-beta.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.17-beta.2/doomer_2026.10.17-beta.2_darwin_amd64.tar.gz"
      sha256 "9136436cf44853662c561c393677466ad3546950e5a5f06ff5fb40070d340764"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.17-beta.2/doomer_2026.10.17-beta.2_darwin_arm64.tar.gz"
      sha256 "b7658bb7992884c6470ee4b473634957c24f331870a8c274a0edeb9a17ae4214"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.17-beta.2/doomer_2026.10.17-beta.2_linux_amd64.tar.gz"
      sha256 "72e8a06667ab6cfe960afb6a6716c362ba230ec016a918d3627b20fff29382fb"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.17-beta.2/doomer_2026.10.17-beta.2_linux_arm64.tar.gz"
      sha256 "e5eacb861ff7d641c34541e703f7a29d796335d97fa083da7fa7698f5601e0da"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
