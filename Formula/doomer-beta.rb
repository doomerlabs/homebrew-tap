class DoomerBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.9.28-beta.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.28-beta.1/doomer_2026.9.28-beta.1_darwin_amd64.tar.gz"
      sha256 "ed2bd2535317fb64590431e2af643b003acb2130c255cf08699171b84422dcb5"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.28-beta.1/doomer_2026.9.28-beta.1_darwin_arm64.tar.gz"
      sha256 "908dd887f7ec4fd2b6607e207af5cc0512f12a63fca9efeeaa69ce4fd948a072"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.28-beta.1/doomer_2026.9.28-beta.1_linux_amd64.tar.gz"
      sha256 "63a5e04c4fda6df959751b20052b7c3536c353d336a2dc5a3bbd652fbcc7ab25"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.28-beta.1/doomer_2026.9.28-beta.1_linux_arm64.tar.gz"
      sha256 "654beadd0d62afaf71fdf26ba857f72c7be222cbba5121b65257a7035dffcbc8"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
