class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/6.1.4/danger-macos.zip"
  sha256 "3378d25fb64c6723c8e2ebf9777ef1bf6293ae024dc5f9ce8a365b127645e9ee"

  def install
    bin.install "danger"
  end
end
