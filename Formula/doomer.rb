class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.4.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.4.3/doomer_2026.11.4.3_darwin_amd64.tar.gz"
      sha256 "cf74a9dc79e7afca7ea0e80368a1924a4a2867d4020fb49d58487c3a61c02794"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.4.3/doomer_2026.11.4.3_darwin_arm64.tar.gz"
      sha256 "eb2fe7c732767724cd543f102d54ec39fc30f559da52f299f2d7e9fc2b59cff8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.4.3/doomer_2026.11.4.3_linux_amd64.tar.gz"
      sha256 "b653ed2d8c380c01108e4bef4c2a3fe30aa2b57b0bc229a4489dea5a3caafeb5"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.4.3/doomer_2026.11.4.3_linux_arm64.tar.gz"
      sha256 "50e6fc7869156a9473c3ae16a0cb9587ed3ea9d9ed280396ebb099d006a21ddc"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
