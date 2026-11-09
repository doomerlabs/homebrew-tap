class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.8.7"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.8.7/doomer_2026.11.8.7_darwin_amd64.tar.gz"
      sha256 "ed054305ab6a9be749e18d0e4cd83d852df5198a1d24a1dc726cbc1a84c1dbaf"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.8.7/doomer_2026.11.8.7_darwin_arm64.tar.gz"
      sha256 "51403e79af6663cea054ae9cf195454dc64d18a5d4bc572a645364691e7ff120"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.8.7/doomer_2026.11.8.7_linux_amd64.tar.gz"
      sha256 "b91466bed44caa2611532c94f82a87db58d999f888c1fdd216371cd2008777ae"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.8.7/doomer_2026.11.8.7_linux_arm64.tar.gz"
      sha256 "20e7ea226fcae387c2d4131a56ec9e71b87f294b60e52c6c10fc391ca2d1de25"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
