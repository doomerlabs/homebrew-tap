class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.10.17"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.17/doomer_2026.10.17_darwin_amd64.tar.gz"
      sha256 "05c622b6b8c5394ce10c13da9602eb2195089473ddf31a621b05cf7afe3a7bac"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.17/doomer_2026.10.17_darwin_arm64.tar.gz"
      sha256 "3c2de46f75e9931ac5a3dcb2d35e6c2fe2ed3d93f0aa05dc3394d8228027e94a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.17/doomer_2026.10.17_linux_amd64.tar.gz"
      sha256 "219051362128dcf3103d67955a29a54b670cc126fa0beee30cc9b5bbad0a84d7"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.17/doomer_2026.10.17_linux_arm64.tar.gz"
      sha256 "5589bf6bda8e10b2a661c26a9841b9288cf15f04df351c08b93730bbcc86bef6"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
