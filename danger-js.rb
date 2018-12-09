class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/6.1.10/danger-macos.zip"
  sha256 "6f88ec4dbc607153bfa175c58310f370e765d062585bc65a7ffe1c387c549827"

  def install
    bin.install "danger"
  end
end
