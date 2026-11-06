class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.6.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.1/doomer_2026.11.6.1_darwin_amd64.tar.gz"
      sha256 "e40c9abe28c6e12b6481d89cec0eab39a16d75310c814e8c1743c0d40c50863f"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.1/doomer_2026.11.6.1_darwin_arm64.tar.gz"
      sha256 "9b98e71ab4182d728cd7d9a666ac11f619117281f6a5519c74690bd52a2b65df"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.1/doomer_2026.11.6.1_linux_amd64.tar.gz"
      sha256 "f398d26320788ff4b4e859cc02fb82577b2f3def303baeacdb1401d182bee0b4"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.1/doomer_2026.11.6.1_linux_arm64.tar.gz"
      sha256 "7e64896bdadb8bb048baa77cb683274ab5803e50e6d355a8060b9faa55c7be7a"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
