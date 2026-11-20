class DoomerBeta < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.20.1-beta.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.20.1-beta.3/doomer_2026.11.20.1-beta.3_darwin_amd64.tar.gz"
      sha256 "2820d65c6d9ed3a4aff31f5906d73ad2e7f6bece6932a17a88ec217d5cba4e88"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.20.1-beta.3/doomer_2026.11.20.1-beta.3_darwin_arm64.tar.gz"
      sha256 "f897ad5eb036b84c73a26ec6aa20de9f9deca9dc67a663f8626de8bc01be65f0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.20.1-beta.3/doomer_2026.11.20.1-beta.3_linux_amd64.tar.gz"
      sha256 "09c098743af81a7505e1e0e62b86308132c65180ef3d0225c878d3087690b54d"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.20.1-beta.3/doomer_2026.11.20.1-beta.3_linux_arm64.tar.gz"
      sha256 "feec77a13d962b76885fd07887a5d3b0c905f584a81d82b32c0b6d78a890be8f"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
