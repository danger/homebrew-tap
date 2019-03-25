class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/7.0.16/danger-macos.zip"
  sha256 "92e00454868b0df24829c140fbe19011a918b63fb66722bf688d80f4fdbd9b8d"

  def install
    bin.install "danger"
  end
end
