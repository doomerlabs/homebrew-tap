class DoomerBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.9.23-beta.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.23-beta.1/doomer_2026.9.23-beta.1_darwin_amd64.tar.gz"
      sha256 "e0cf688a432b8d2707f4d0d240f99ff3d450766168e7f7ca4e366469ef008f9c"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.23-beta.1/doomer_2026.9.23-beta.1_darwin_arm64.tar.gz"
      sha256 "995a72f40f07ab0bcca6c0d16f6ea631cf9f051a4ba6491eb657fc6c688a347c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.23-beta.1/doomer_2026.9.23-beta.1_linux_amd64.tar.gz"
      sha256 "3535ee11ca6e6e14282b378af06b75e28c0037f42aa468dd013362e80451cfbb"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.23-beta.1/doomer_2026.9.23-beta.1_linux_arm64.tar.gz"
      sha256 "4f9fde3b39979bca4175ff74ae90c5b70e91f12fb410fc32d616c90749d15124"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
