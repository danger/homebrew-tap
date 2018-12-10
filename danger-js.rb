class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/6.1.11/danger-macos.zip"
  sha256 "90ff1150a1ba564e39481cd9ba6e8ae5c53d0d4edb88c9ea507e5e4a7c8283db"

  def install
    bin.install "danger"
  end
end
