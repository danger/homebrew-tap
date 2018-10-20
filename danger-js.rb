class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/6.0.2/danger-macos.zip"
  sha256 "a05fd1d7714257779bdbbca843e7c7d1399e9195a82531c47d59d78a62dde10e"

  def install
    bin.install "danger"
  end
end
