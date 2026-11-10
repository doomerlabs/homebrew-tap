class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.10.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.10.1/doomer_2026.11.10.1_darwin_amd64.tar.gz"
      sha256 "d49176d9f99a307dddb89bef5041584018d2ee76fe2be52138bcc06e982d7e1e"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.10.1/doomer_2026.11.10.1_darwin_arm64.tar.gz"
      sha256 "3babebc6862db440bbd0f08144a5e762ef429a0672e247905efcf3db80209393"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.10.1/doomer_2026.11.10.1_linux_amd64.tar.gz"
      sha256 "5fadd57f86712e4fc8a15989f7c6fc3fca7a0b27ac937bd1412a509005bdf601"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.10.1/doomer_2026.11.10.1_linux_arm64.tar.gz"
      sha256 "98492dad1adfc55cf47b14e9127f65f1deeb84568de6259f865eb090787bc5f7"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
