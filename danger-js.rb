class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/7.0.14/danger-macos.zip"
  sha256 "e81a31b262ecf082bd82bd6d6f40b9640e048267fba957a97a6de112665510e8"

  def install
    bin.install "danger"
  end
end
