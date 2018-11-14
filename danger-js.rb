class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/6.1.3/danger-macos.zip"
  sha256 "3518d29e9f9ad178f2831255bb588c1e92a242731e718fe50fb8612368d6ccd5"

  def install
    bin.install "danger"
  end
end
