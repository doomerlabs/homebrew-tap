class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.10.30"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.30/doomer_2026.10.30_darwin_amd64.tar.gz"
      sha256 "cbd2ade689052ee1401cbace25b3355d72eaa584849f976d9dd011cf43a1ec87"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.30/doomer_2026.10.30_darwin_arm64.tar.gz"
      sha256 "922e1718705269152b086901eade582d9c54da05a304078c51f1d3a151becc48"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.30/doomer_2026.10.30_linux_amd64.tar.gz"
      sha256 "3e9c03befc78e987a702339eca5fdd7991613fbadee105d42b110bfa1561d23d"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.10.30/doomer_2026.10.30_linux_arm64.tar.gz"
      sha256 "0c9a4a96f13b96a3a33b4640aa97b26099930e55b9f73afc61be5affff7a2604"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
