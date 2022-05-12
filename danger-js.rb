class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/11.0.6/danger-macos.zip"
  sha256 "7a7c47cc45fbfe4b4ebe14aadcceb39ae4e71cc2b23660bf6fdcf9268c430aa4"

  def install
    bin.install "danger"
  end
end
