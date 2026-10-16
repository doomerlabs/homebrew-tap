class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.10.16"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.16/doomer_2026.10.16_darwin_amd64.tar.gz"
      sha256 "9518c805dd34d7047cebd9c0a982812a482ce49eb2ee07881519ca8ec51042d7"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.16/doomer_2026.10.16_darwin_arm64.tar.gz"
      sha256 "71164c7e9f927eb3a5ab6f911f5355d7fcaa5949d012cca92d6d82efb99f8617"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.16/doomer_2026.10.16_linux_amd64.tar.gz"
      sha256 "7c6bd03e6f6d57ba439d0921935c664075ce54987fc99e5894265e40b037ca6f"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.16/doomer_2026.10.16_linux_arm64.tar.gz"
      sha256 "976f60123801d15deaeb651bc0f99627fbe63167fb7316b8458e5d6dbb2fcd2e"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
