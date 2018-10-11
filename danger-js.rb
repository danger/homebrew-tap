class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/4.4.8/danger-macos.zip"
  sha256 "92d65ba2523712b4ade4740ed3dae41babcbc66a7d2225e343205a3e3e8e46b0"

  def install
    bin.install "danger"
  end
end
