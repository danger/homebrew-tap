class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/6.1.8/danger-macos.zip"
  sha256 "990cc47a9e7000cefcbae5ba7a3c7f592b0e884783c1d7694a4930cd25c858e0"

  def install
    bin.install "danger"
  end
end
