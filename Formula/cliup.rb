class Cliup < Formula
  desc "Small macOS CLI updater for whitelisted developer tools"
  homepage "https://github.com/seewhyme/cliup"
  url "https://github.com/seewhyme/cliup/releases/download/v0.1.1/cliup-v0.1.1-aarch64-apple-darwin.tar.gz"
  sha256 "d57b5420596691283503cdc6edd28e10633f844791c9aa2f7c791df9b513a7ab"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "cliup"
  end

  test do
    assert_match "cliup #{version}", shell_output("#{bin}/cliup --version")
  end
end
