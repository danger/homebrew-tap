class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/11.0.4/danger-macos.zip"
  sha256 "98a88192139b0f68bc88644e6b7414e6e6d1e82b85aa554603fa0be763707e68"

  def install
    bin.install "danger"
  end
end
