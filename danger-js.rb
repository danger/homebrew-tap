class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/10.7.0/danger-macos.zip"
  sha256 "8c1d6c63cbcad391b366b0e632a7cb875113609b039b5a20d3d0e4bbabcfe6c8"

  def install
    bin.install "danger"
  end
end
