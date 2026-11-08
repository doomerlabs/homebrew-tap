class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.8.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.8.2/doomer_2026.11.8.2_darwin_amd64.tar.gz"
      sha256 "f50cab322f4b653622a2fce67ea5ad43d18be1d8db4f42c9847ba0bb21878dd7"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.8.2/doomer_2026.11.8.2_darwin_arm64.tar.gz"
      sha256 "fffd1a498a2804f88d74f6cc2d77977bff55c6e5a7d2a7bc05378be14b7625cc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.8.2/doomer_2026.11.8.2_linux_amd64.tar.gz"
      sha256 "0ff24575aa685964ab387f9e26d0c2adec185860324333cb44c1daa09c1bcb4b"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.8.2/doomer_2026.11.8.2_linux_arm64.tar.gz"
      sha256 "16127077640a0e074f6e6cd7aa2078d291b01fea458a7cebfe75c80be987a303"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
