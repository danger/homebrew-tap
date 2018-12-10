class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/6.1.12/danger-macos.zip"
  sha256 "8b62a346dab1dcd79cb667c1e727965802f12c9815755f42ccaa08e780c9a2aa"

  def install
    bin.install "danger"
  end
end
