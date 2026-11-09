class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.9.4"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.9.4/doomer_2026.11.9.4_darwin_amd64.tar.gz"
      sha256 "1cf00929826626f3fbfde32ea186d21f64b4a2386a0fea969534cf6f41e7ed8d"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.9.4/doomer_2026.11.9.4_darwin_arm64.tar.gz"
      sha256 "608dfdec17b5c04b699a7fe763930df40b3f03934c7b991d78fe2a9a2cbf8fa9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.9.4/doomer_2026.11.9.4_linux_amd64.tar.gz"
      sha256 "1779dc0a14e5fdd8c1c16e1650ac97a0bcca358fe2beeb022766fbf1414d72e2"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.9.4/doomer_2026.11.9.4_linux_arm64.tar.gz"
      sha256 "7624c8a8806f5051f5c94b1861cec3500ed2d73b9901539f8740b39680f5d264"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
