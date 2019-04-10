class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/7.1.0/danger-macos.zip"
  sha256 "c85f18cf9cfd3e139123deb66fd46a719df1f4a177abb0397daebf2d1afa132f"

  def install
    bin.install "danger"
  end
end
