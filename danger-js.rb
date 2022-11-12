class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/11.2.0/danger-macos.zip"
  sha256 "8f13366ae9c6521186919d79e03518035e5139705811ee0f476227dcd75b456a"

  def install
    bin.install "danger"
  end
end
