class Cliup < Formula
  desc "Small macOS CLI updater for whitelisted developer tools"
  homepage "https://github.com/seewhyme/cliup"
  url "https://github.com/seewhyme/cliup/releases/download/v0.1.2/cliup-v0.1.2-aarch64-apple-darwin.tar.gz"
  sha256 "7ec0130a192a6764771aa36bf2810ef12d4a05df358e69d9b87cf86f89193277"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "cliup"
  end

  test do
    assert_match "cliup #{version}", shell_output("#{bin}/cliup --version")
  end
end
