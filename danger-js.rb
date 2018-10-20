class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/4.4.10/danger-macos.zip"
  sha256 "fe7a860b50dcac4dc71350213158f41c0beb9167df3a15c6714b782f3060ef1e"

  def install
    bin.install "danger"
  end
end
