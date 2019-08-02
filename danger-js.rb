class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/9.1.5/danger-macos.zip"
  sha256 "33a4a48875070291348333dcc477ef653cec4c35ea9ec09e17f9d22ac767d8a2"

  def install
    bin.install "danger"
  end
end
