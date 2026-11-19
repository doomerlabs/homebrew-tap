class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.19.1-beta.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.19.1-beta.1/doomer_2026.11.19.1-beta.1_darwin_amd64.tar.gz"
      sha256 "54d8b87acbd2556b04f68b3eea8962f5e88eed8d426cfc8bf76b9c3b664ffb89"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.19.1-beta.1/doomer_2026.11.19.1-beta.1_darwin_arm64.tar.gz"
      sha256 "abd6c23b00511a9675f26d2129a4a04d5f7154deffbab930b4806b774ba5c8e7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.19.1-beta.1/doomer_2026.11.19.1-beta.1_linux_amd64.tar.gz"
      sha256 "2178bd79c44ae1736dca1ec4683e27db9e40e1f4a42223e0117bc18f13211cfe"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.19.1-beta.1/doomer_2026.11.19.1-beta.1_linux_arm64.tar.gz"
      sha256 "dc4b9e95cc7a4108cc4ec9e25c1e49fd7aeffa417d982a9b27c944470a7afd00"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
