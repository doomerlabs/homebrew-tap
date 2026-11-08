class Doomer < Formula
  desc "Connect to the Doomer SaaS"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.11.7.5"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.7.5/doomer_2026.11.7.5_darwin_amd64.tar.gz"
      sha256 "45e74169301ef8a56cf58ed62a501f06680d5563157c00e9f4905d9d36fb74e3"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.7.5/doomer_2026.11.7.5_darwin_arm64.tar.gz"
      sha256 "ad99e4cba0e2505c31605bdafc263aa156e2d83977ee52d0c94ab6604a8030be"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.7.5/doomer_2026.11.7.5_linux_amd64.tar.gz"
      sha256 "f5643306147dd135ab2f71a9d02cc2f1ce50e40b0ddea60833aaa648386cefd1"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.11.7.5/doomer_2026.11.7.5_linux_arm64.tar.gz"
      sha256 "285e5935ef3d68beefd98c7f8b6db220b7b9fa863d5d87f528a1c8c91c24d1f5"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
