class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.8.4"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.8.4/doomer_2026.11.8.4_darwin_amd64.tar.gz"
      sha256 "5dd3d602f0d4ecbbd06fcce763a663bf358d829887c18855acb99be2560ce8d9"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.8.4/doomer_2026.11.8.4_darwin_arm64.tar.gz"
      sha256 "20dac9954e78858ae2fd978ea75f05f3b8726d6b0954d1cffa35c43ea6100f28"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.8.4/doomer_2026.11.8.4_linux_amd64.tar.gz"
      sha256 "5177ccde961b09c154f9ded6d8edf5b7478e41cc018436d15d14be15c954303f"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.8.4/doomer_2026.11.8.4_linux_arm64.tar.gz"
      sha256 "3ce5934c4f102a017f71e21b8f2db6b7f18f822e022ccb179da64289293d94f6"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
