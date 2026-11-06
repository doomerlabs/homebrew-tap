class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.6.7"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.7/doomer_2026.11.6.7_darwin_amd64.tar.gz"
      sha256 "fedc32ce045b0d172d35e1ca2b2eb528f7de79d7b388a74cacb281f56530b3fc"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.7/doomer_2026.11.6.7_darwin_arm64.tar.gz"
      sha256 "1a54c3bbf1359fa321e63a9f2555524b7d79e660ee02c08c076d56dc6788b2fe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.7/doomer_2026.11.6.7_linux_amd64.tar.gz"
      sha256 "2d16f03a5d60bb21c55d33b5cb8e2d39f43385fae8dd2079e7c1e03e594b367d"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.6.7/doomer_2026.11.6.7_linux_arm64.tar.gz"
      sha256 "a0b66314a563ae2e411491fd0889c686ca4704bda112b261398595d574781a24"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
