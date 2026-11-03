class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.2.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.2.2/doomer_2026.11.2.2_darwin_amd64.tar.gz"
      sha256 "7ae7e763ed00fc7d84448b06120782455fd61476ad69ed2ec842b7e69794dcdc"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.2.2/doomer_2026.11.2.2_darwin_arm64.tar.gz"
      sha256 "3a27f58207f5f65f45cbef1e7b1606d22718f1001393e3c02c3ae78f69983e94"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.2.2/doomer_2026.11.2.2_linux_amd64.tar.gz"
      sha256 "a67e7c060cdb03266e838bd94d55edd7e209afa902ed57ede818eed4e8ea9f9c"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.2.2/doomer_2026.11.2.2_linux_arm64.tar.gz"
      sha256 "6b814948ccf9154071989c9b13ce7d4bd65de9cebb31076da8f71bcd7e56f03e"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
