class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.9.6"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.9.6/doomer_2026.11.9.6_darwin_amd64.tar.gz"
      sha256 "55bfdebdeab00bfb6ee5fc4916cf4b86b37b6e08cc5d677efd42a6cd7ebea562"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.9.6/doomer_2026.11.9.6_darwin_arm64.tar.gz"
      sha256 "15c4035f4638bc11fb8cb341e81e30963ffc0cf68dd668f8156ab7bf2e2119dd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.9.6/doomer_2026.11.9.6_linux_amd64.tar.gz"
      sha256 "fc88cc219ab02819cdd1833589f00c1c6e8f25a9cd3ebd217f2fa3128397a207"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.9.6/doomer_2026.11.9.6_linux_arm64.tar.gz"
      sha256 "cd7352b04a52182fa8cb57836b0b1cc649de900f1b9d50526e52170d58cdc0f1"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
