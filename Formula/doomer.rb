class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.10.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.10.3/doomer_2026.11.10.3_darwin_amd64.tar.gz"
      sha256 "e5239e27602c7e10926ae27c7c318db0b38180fda1f26f58b1c13b959b0ada39"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.10.3/doomer_2026.11.10.3_darwin_arm64.tar.gz"
      sha256 "d6aed9d2e31e4be8c4253741f78e0f2fe0a5d20edf3c5950ebe6f1db28385032"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.10.3/doomer_2026.11.10.3_linux_amd64.tar.gz"
      sha256 "fb76572c65ce5ea342f473ab5fbb54275b60d55c7d9f0df2b3da1bee9fa49875"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.10.3/doomer_2026.11.10.3_linux_arm64.tar.gz"
      sha256 "380baf062787607f840f4e32e6c3339b6739684bb162be464f9f7a71fbb8c66e"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
