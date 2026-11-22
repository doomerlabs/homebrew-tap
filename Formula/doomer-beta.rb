class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.22.1-beta.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.22.1-beta.2/doomer_2026.11.22.1-beta.2_darwin_amd64.tar.gz"
      sha256 "fa1074a641cce13a70c7533f72d18f73f0f829d9267ee0168a08ef0d8c3e2d9a"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.22.1-beta.2/doomer_2026.11.22.1-beta.2_darwin_arm64.tar.gz"
      sha256 "15046c4ec2ab6075c9b7dfecb32b9c10299abe99669fd34f821f2eddf5cf6ec5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.22.1-beta.2/doomer_2026.11.22.1-beta.2_linux_amd64.tar.gz"
      sha256 "efb00c371b241d9ff93a97c4cc6e12ee7541a134a0cf50db82a844b9335384a3"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.22.1-beta.2/doomer_2026.11.22.1-beta.2_linux_arm64.tar.gz"
      sha256 "681590dad055eaa2f12caa413a63e1bccc84c84675bbed09659834d8aa0d2798"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
