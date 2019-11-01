class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/9.2.2/danger-macos.zip"
  sha256 "576bd93de1e68068f6f4040bdbd9431caa3d567fe4d71ea8a17ef946ff5b1074"

  def install
    bin.install "danger"
  end
end
