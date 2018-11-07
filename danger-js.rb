class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/6.0.5/danger-macos.zip"
  sha256 "ec00d5b535781f16e9275681f547f5a0ea1fbc1348a4e8185c20192fc931b3f8"

  def install
    bin.install "danger"
  end
end
