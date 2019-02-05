class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/7.0.7/danger-macos.zip"
  sha256 "f1f71666b7e14e4667c4f1097dfda25b9d8bcdcaeafafe1d45d4abc1d7e83abf"

  def install
    bin.install "danger"
  end
end
