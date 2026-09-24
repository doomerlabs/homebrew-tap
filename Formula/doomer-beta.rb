class DoomerBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.9.25-beta.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.25-beta.1/doomer_2026.9.25-beta.1_darwin_amd64.tar.gz"
      sha256 "8fb1333e13180bb66362552f34a3c026b2ec90fd442efeaf0346bab5a694085d"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.25-beta.1/doomer_2026.9.25-beta.1_darwin_arm64.tar.gz"
      sha256 "286db772125a73350d8d760abe9554988b2596128f2688dfd8be9b2e714d363c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.25-beta.1/doomer_2026.9.25-beta.1_linux_amd64.tar.gz"
      sha256 "7342b5d5ca0edf8a7f9d447b7f230c3159309237c39e8a96b61f1aca8a16c95e"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.25-beta.1/doomer_2026.9.25-beta.1_linux_arm64.tar.gz"
      sha256 "68308336431bfe539fc8f8e45137d0586330f26c521712ba315b9ce92f840455"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
