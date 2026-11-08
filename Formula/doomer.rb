class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.8.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.8.1/doomer_2026.11.8.1_darwin_amd64.tar.gz"
      sha256 "cafee8f24e92eed9e678a454ccf07dd67aa8650c818edc498e8a8165f0563590"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.8.1/doomer_2026.11.8.1_darwin_arm64.tar.gz"
      sha256 "42a958adab558a7ff521a80274b2343818f42819ceff6bad9bdf4d18ac7f052a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.8.1/doomer_2026.11.8.1_linux_amd64.tar.gz"
      sha256 "70b54279f59faa3fed8ac278af7995086cfd3f5bf6ac2ae6a8796f717ad8983a"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.8.1/doomer_2026.11.8.1_linux_arm64.tar.gz"
      sha256 "11595676cbbeac59a3b48df6fa7c7acb62122642811fe79cbcd371658366090d"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
