class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.7.4"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.7.4/doomer_2026.11.7.4_darwin_amd64.tar.gz"
      sha256 "400ecd3f4c07a7cc8dcdbe374f07b8602628f79358984ceb2aa549d7a4618685"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.7.4/doomer_2026.11.7.4_darwin_arm64.tar.gz"
      sha256 "c0766247a0c2e5ebe341b5b929044c7d12e10a6042893b2e54ace7b9c8abb385"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.7.4/doomer_2026.11.7.4_linux_amd64.tar.gz"
      sha256 "58d4f69346bc505b712ce3003c3ee056ef448d147234ed71ae52a3319cda58da"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.7.4/doomer_2026.11.7.4_linux_arm64.tar.gz"
      sha256 "91f68319dd7a07d32f65126bfa94d3c2a36907a53a260e031c7d36438420c406"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
