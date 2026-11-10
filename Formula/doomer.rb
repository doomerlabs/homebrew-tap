class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.9.5"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.9.5/doomer_2026.11.9.5_darwin_amd64.tar.gz"
      sha256 "fb4954914689b3184ae7bd14e9e5ae95a7870b6fd199f76363f2c0b86a8aea41"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.9.5/doomer_2026.11.9.5_darwin_arm64.tar.gz"
      sha256 "39045fafd55cb82271f92c62cf4eedebe0780d7f71852bd2e230e102f1e13a89"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.9.5/doomer_2026.11.9.5_linux_amd64.tar.gz"
      sha256 "938ce525cc185f3c52ca3152ba87317b5374e911fa2366d031945b4b747e4f5f"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.9.5/doomer_2026.11.9.5_linux_arm64.tar.gz"
      sha256 "a88d5b31f44eb1ee8e1efa54d276c0dea296e5ecdd5e07d5fab151129f9da27e"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
