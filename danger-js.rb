class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/11.1.3/danger-macos.zip"
  sha256 "4e23754e9a0aef2979f1c6afb3d1f3a2fe38dde1dafc0781c3be5c810c97f60c"

  def install
    bin.install "danger"
  end
end
