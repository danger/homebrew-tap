class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/6.1.0/danger-macos.zip"
  sha256 "22b959cb537506ceb22a14f264aeacf78fef4a1d249724761b44aa2dab06f052"

  def install
    bin.install "danger"
  end
end
