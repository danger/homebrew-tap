class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/6.1.13/danger-macos.zip"
  sha256 "a76a426aa210047fe09965dda51b8fad52a08d5c112a389ef5c7dcc3c096e842"

  def install
    bin.install "danger"
  end
end
