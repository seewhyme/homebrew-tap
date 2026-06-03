class Cliup < Formula
  desc "Small macOS CLI updater for whitelisted developer tools"
  homepage "https://github.com/seewhyme/cliup"
  url "https://github.com/seewhyme/cliup/releases/download/v0.1.3/cliup-v0.1.3-aarch64-apple-darwin.tar.gz"
  sha256 "939b2044a47d4f896a15fb4a7bb132f6467f91c85b306e95809db2ecef4b711d"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "cliup"
  end

  test do
    assert_match "cliup #{version}", shell_output("#{bin}/cliup --version")
  end
end
