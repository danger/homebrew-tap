class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/6.0.6/danger-macos.zip"
  sha256 "b38a3c00cc8194a40d1669e35876362edaa9fa531436664a027db98b4868d816"

  def install
    bin.install "danger"
  end
end
