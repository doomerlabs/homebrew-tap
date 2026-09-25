class DoomerBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.9.25-beta.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.25-beta.3/doomer_2026.9.25-beta.3_darwin_amd64.tar.gz"
      sha256 "269442ef398245a122c4ec18c205c16e5a534cf677b24fca5c6b7c7a153e26d7"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.25-beta.3/doomer_2026.9.25-beta.3_darwin_arm64.tar.gz"
      sha256 "0f66cd10a2fb7d2dac189598b7805656e3a9918211de2725444898b6a1dd38b7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.25-beta.3/doomer_2026.9.25-beta.3_linux_amd64.tar.gz"
      sha256 "a252159eb6beebe372eabedfe9b057b64899581a4a80a6efb94e15cc1e53d7fb"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.25-beta.3/doomer_2026.9.25-beta.3_linux_arm64.tar.gz"
      sha256 "9d5246e338e097308ab9f1cf479ff60debd9bf59bc4259a0dcd347597415eae6"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
