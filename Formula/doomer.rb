class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.8.6"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.8.6/doomer_2026.11.8.6_darwin_amd64.tar.gz"
      sha256 "29157e9b70a2f726a07bfda0e8f42e3afb133fe3036c0080bcea43c15709741f"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.8.6/doomer_2026.11.8.6_darwin_arm64.tar.gz"
      sha256 "5b9eafd5d0928bf4e4034a83d62fcadc9b10585c7a0b8253196f82a85919a3e1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.8.6/doomer_2026.11.8.6_linux_amd64.tar.gz"
      sha256 "2836a8ac4758eac241d81e573cfebe24eb5d6201bc647ae1a7d2a1b120d90ea2"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.8.6/doomer_2026.11.8.6_linux_arm64.tar.gz"
      sha256 "c4ba9ed8e1f7cebd94a861f846a64e1bb03c9d1bebc4b9d099322431e4ab9971"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
