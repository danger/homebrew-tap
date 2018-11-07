class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/6.0.3/danger-macos.zip"
  sha256 "73b6710f146973f0735f1047ce984000ded0d252279bd8e66198d33d9a79098d"

  def install
    bin.install "danger"
  end
end
