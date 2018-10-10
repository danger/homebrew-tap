class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/4.4.6/danger-macos.zip"
  sha256 "3e3aebf6caaf9c5d4c77bca544d5fa9d64a6e2f3dac8366316cec6d00308a968"

  def install
    bin.install "danger"
  end
end
