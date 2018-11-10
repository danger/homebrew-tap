class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/6.0.7/danger-macos.zip"
  sha256 "bce1b11dc9702b8b8a0899c7f8c32043cd6a1e94270f7ebfdd45c62746d4812c"

  def install
    bin.install "danger"
  end
end
