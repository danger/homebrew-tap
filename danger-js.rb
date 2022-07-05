class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/11.1.1/danger-macos.zip"
  sha256 "e975daff0ed90869fe35d8f3026c080dc007f3ec837fd8f7bcc409ec2b18f815"

  def install
    bin.install "danger"
  end
end
