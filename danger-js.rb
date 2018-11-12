class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/6.1.1/danger-macos.zip"
  sha256 "c836af76871cbd6cf4eca22abd86cfa86d5c1288a2f132c644d7414734ae0b30"

  def install
    bin.install "danger"
  end
end
