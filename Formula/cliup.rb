class Cliup < Formula
  desc "Small macOS CLI updater for whitelisted developer tools"
  homepage "https://github.com/seewhyme/cliup"
  url "https://github.com/seewhyme/cliup/releases/download/v0.1.0/cliup-v0.1.0-aarch64-apple-darwin.tar.gz"
  sha256 "19fac55b673566e8cb971e26cfdd78a28bc96eb3cb056f7d7e0eff52172138ba"
  license "MIT"
  version "0.1.0"

  depends_on arch: :arm64

  def install
    bin.install "cliup"
  end

  test do
    assert_match "cliup #{version}", shell_output("#{bin}/cliup --version")
  end
end
