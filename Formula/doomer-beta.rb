class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.16.1-beta.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.16.1-beta.1/doomer_2026.11.16.1-beta.1_darwin_amd64.tar.gz"
      sha256 "ed580f11f26705d3a0d4e49c48236fcd3cae9353b086dc7809f36934c64c84fd"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.16.1-beta.1/doomer_2026.11.16.1-beta.1_darwin_arm64.tar.gz"
      sha256 "92009e1caeea2b734b605c9de229365c25764ed60edad954954b129667595142"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.16.1-beta.1/doomer_2026.11.16.1-beta.1_linux_amd64.tar.gz"
      sha256 "a08ec311761c3c7c245a0384724be3ab44af1684bc45cb007eece919ce8568d4"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.16.1-beta.1/doomer_2026.11.16.1-beta.1_linux_arm64.tar.gz"
      sha256 "efa40ee5813aec81bf7e9f9ddf1ba56befa7ea8aa06bd8aef3b75a085da8d594"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
