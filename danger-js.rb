class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/6.0.4/danger-macos.zip"
  sha256 "273b74edc135a3aa073288c1d2aef894eb7f6258690099c8f983ebfe29b1b4bb"

  def install
    bin.install "danger"
  end
end
