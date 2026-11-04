class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.3.6"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.3.6/doomer_2026.11.3.6_darwin_amd64.tar.gz"
      sha256 "6361a65d4a810b85dbb0de015c398a7e2a860750bb3660ef3ecf88d00f0951ac"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.3.6/doomer_2026.11.3.6_darwin_arm64.tar.gz"
      sha256 "699330acda7f3b02daa6d78827fb11174c7c24f3b165d5a3731b6219e26f2b28"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.3.6/doomer_2026.11.3.6_linux_amd64.tar.gz"
      sha256 "c9c9bcb9a7f8f94d8d007f0235c23538680025c3a9f98b85168b86d3a7ddc12a"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.3.6/doomer_2026.11.3.6_linux_arm64.tar.gz"
      sha256 "ef3e8380fa0f54a1185f275dd99c3b03020a30bcd097da67e2588b7fb20bf181"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
