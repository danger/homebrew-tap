class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/6.0.0/danger-macos.zip"
  sha256 "e9a4e88a32f3dbe48a80ebd891d9e7a2e23b89ca0c69323330294e039106199f"

  def install
    bin.install "danger"
  end
end
