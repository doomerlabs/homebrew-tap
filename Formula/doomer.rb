class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.9.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.9.2/doomer_2026.11.9.2_darwin_amd64.tar.gz"
      sha256 "41611597382b3ff47d17bb846d16233f895751110de5bfe58ce552a30009abc4"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.9.2/doomer_2026.11.9.2_darwin_arm64.tar.gz"
      sha256 "02c15c387bb6b7b9ec9eb247853c700c3bda0a5d38f495398185336323d8dd52"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.9.2/doomer_2026.11.9.2_linux_amd64.tar.gz"
      sha256 "71f6882877091a208e2f037faeb8f8aefee216920491ef08f8c342eafd9286ae"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.9.2/doomer_2026.11.9.2_linux_arm64.tar.gz"
      sha256 "1c5bb66ce2c8e3b87ab0f406727bbbaff64a26bc60c56d1fb313e22327808631"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
