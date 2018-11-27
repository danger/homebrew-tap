class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/6.1.7/danger-macos.zip"
  sha256 "4d4ec095f87edb63d146bd995fdb615875a7234b9b7ae89381968c03cbdd64b5"

  def install
    bin.install "danger"
  end
end
