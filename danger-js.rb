class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/7.0.17/danger-macos.zip"
  sha256 "1fe53fd401a1801229d54cfa6c5e45bb94599e4ad3fd0622d3acbad06d9e973c"

  def install
    bin.install "danger"
  end
end
