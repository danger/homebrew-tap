class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/6.1.5/danger-macos.zip"
  sha256 "d4c3b0e648ea965e755073eca3eeb072e090c76be54c33aff1cd69d21910f9db"

  def install
    bin.install "danger"
  end
end
