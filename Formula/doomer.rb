class Doomer < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.9.19.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.19.2/doomer_2026.9.19.2_darwin_amd64.tar.gz"
      sha256 "2c7285cbc76ee586104b0f383eba37aa2cfff08c505aa2adad123b18cbca9cb0"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.19.2/doomer_2026.9.19.2_darwin_arm64.tar.gz"
      sha256 "93ab33403b0c054b55ed482b2b770fc05ca0917ea2a5e5761e2156e608cb2daa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.19.2/doomer_2026.9.19.2_linux_amd64.tar.gz"
      sha256 "f1806b7cab3adc0ed56688b58006f8f664564d345f9131ce7b45b6f27d3b60e8"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.19.2/doomer_2026.9.19.2_linux_arm64.tar.gz"
      sha256 "13ce10bd5d634551963dd03f69f684a05b2cac24ecfcc9c48e4b17e4613f3eb5"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
