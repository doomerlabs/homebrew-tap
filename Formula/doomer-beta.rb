class DoomerBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.9.24-beta.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.24-beta.1/doomer_2026.9.24-beta.1_darwin_amd64.tar.gz"
      sha256 "89e00ec6f229feedcecce929171e9034464b99a0884615f4d54b673f8b8cecac"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.24-beta.1/doomer_2026.9.24-beta.1_darwin_arm64.tar.gz"
      sha256 "c1f86938ce8427a3d5f57c9ddf588b94236e850edb36bac398a3e82e461a2968"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.24-beta.1/doomer_2026.9.24-beta.1_linux_amd64.tar.gz"
      sha256 "e7ad0323b0e4e4b6237e344cb59b955106980c893053a66350fb36fedb2d7092"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.24-beta.1/doomer_2026.9.24-beta.1_linux_arm64.tar.gz"
      sha256 "9495eb2ef1a906d9b1d7c0d2173cb92cff9072402df96d366d83aec99e375f5b"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
