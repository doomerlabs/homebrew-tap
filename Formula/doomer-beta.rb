class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.2-beta.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.2-beta.1/doomer_2026.11.2-beta.1_darwin_amd64.tar.gz"
      sha256 "9e1a08b0aa6c5c00ac009f8fc529b15027a17154b78c7105380edd79dca4da5c"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.2-beta.1/doomer_2026.11.2-beta.1_darwin_arm64.tar.gz"
      sha256 "c7be080be9baf3ff23ef968e5237257b1228679814ebadb0784ae0c2cfd65752"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.2-beta.1/doomer_2026.11.2-beta.1_linux_amd64.tar.gz"
      sha256 "052ea9d829146b8484183f1dc9b07ce89d1aba766484cab061efadeedd4f2940"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.2-beta.1/doomer_2026.11.2-beta.1_linux_arm64.tar.gz"
      sha256 "315793b189c2fe1e6554ae0fa2dac30582a30f40158446c28e6cf3b6e3f78250"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
