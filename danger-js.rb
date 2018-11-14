class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/6.1.2/danger-macos.zip"
  sha256 "8703aa6e73b3277525c36abf5a41de7cce5455f6bb371669c7607ee0d8e2f4b3"

  def install
    bin.install "danger"
  end
end
