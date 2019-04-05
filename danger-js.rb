class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/7.0.18/danger-macos.zip"
  sha256 "1fe14661f4c6399b1a3522d93c8162ab8591ab671d735256638d6779c23ec0e2"

  def install
    bin.install "danger"
  end
end
