class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/4.4.7/danger-macos.zip"
  sha256 "a9992c82f263583907b9a0e3c0d5057e340de15c7d9d44777ef3b82456b7e8c9"

  def install
    bin.install "danger"
  end
end
