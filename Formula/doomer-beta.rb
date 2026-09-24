class DoomerBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.9.24-beta.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.24-beta.2/doomer_2026.9.24-beta.2_darwin_amd64.tar.gz"
      sha256 "4fcd4df66d3cac0b6515aa2a18c130f33609d62852832b7ea64ceb186219fc9b"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.24-beta.2/doomer_2026.9.24-beta.2_darwin_arm64.tar.gz"
      sha256 "1a41d6a50b51da3dc6f57746d3ed5bfaca31a67783dd28645967bd9b4fb26128"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.24-beta.2/doomer_2026.9.24-beta.2_linux_amd64.tar.gz"
      sha256 "c79b9b35f644cd44953677e606fd25ef938cb774f294f091c3979c75bf4f592f"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.24-beta.2/doomer_2026.9.24-beta.2_linux_arm64.tar.gz"
      sha256 "998d3b9c375a60596a2b5dd105e2c0644817b9d78f4c9cc6aebf7054198cd834"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
