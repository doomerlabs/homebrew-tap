class DoomerBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.9.30-beta.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.30-beta.2/doomer_2026.9.30-beta.2_darwin_amd64.tar.gz"
      sha256 "fca65973b881dad53ee5659232209688661050f253bc819be73a48e350a1c369"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.30-beta.2/doomer_2026.9.30-beta.2_darwin_arm64.tar.gz"
      sha256 "bf0aa3d39941d7cb0f7817495f6632b553fb53ab15b3cdad9aeaa8e676e52aef"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.30-beta.2/doomer_2026.9.30-beta.2_linux_amd64.tar.gz"
      sha256 "d9d41578bb49fcb205ed8aae148d56ab5b5e7d3c54a0aaa7050e87a0a8cd2e2e"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.30-beta.2/doomer_2026.9.30-beta.2_linux_arm64.tar.gz"
      sha256 "5d20e48f9e1b658061085ee06548ce3324e7bbc56f37fbff1af31459d656e77d"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
