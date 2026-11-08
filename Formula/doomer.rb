class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.7.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.7.3/doomer_2026.11.7.3_darwin_amd64.tar.gz"
      sha256 "caaded8806a811ca396128fcfb213a841f3f4ada9fc683896098db769c3273d6"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.7.3/doomer_2026.11.7.3_darwin_arm64.tar.gz"
      sha256 "fe44066279e84295136fba325b84e57d74cb7b6645e400db57e8e39e50443019"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.7.3/doomer_2026.11.7.3_linux_amd64.tar.gz"
      sha256 "ef6e29c4796ea2b48b66316ed4261372e626a02dbeba836e7afbd346cf641746"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.7.3/doomer_2026.11.7.3_linux_arm64.tar.gz"
      sha256 "2bcbd224a8e0799c6a529dcd845ce3f97cf3b27ed5fdd05c163f416e088c3e81"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
