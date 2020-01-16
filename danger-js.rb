class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/9.2.10/danger-macos.zip"
  sha256 "42a22faa300d23894f03a980c54a40c0435355017b2eeba1c6080177d49bd175"

  def install
    bin.install "danger"
  end
end
