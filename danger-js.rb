class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/11.1.2/danger-macos.zip"
  sha256 "5a814d758d3452a0bdd262a778b2fb9c5a81ed64553af6f210ab5edf52a41aa3"

  def install
    bin.install "danger"
  end
end
