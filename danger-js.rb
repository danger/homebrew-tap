class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/11.0.7/danger-macos.zip"
  sha256 "b18d6e66a66628a72775aca7d57441647dc821c8f0d55de5ca289843f5e9b808"

  def install
    bin.install "danger"
  end
end
