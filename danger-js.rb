class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/7.0.11/danger-macos.zip"
  sha256 "2b2c753e69d0b2d4325688050f715475f3f09ed888d6922369a289ca6eb17836"

  def install
    bin.install "danger"
  end
end
