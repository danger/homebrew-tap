class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"

  if Hardware::CPU.intel?
    url "https://github.com/danger/danger-js/releases/download/13.0.8/danger-macos-x64.zip"
    sha256 "9ca5065782a6174b3fc3f100ecc64cf3c0ee8da93e0eb5b4044cbc236f9c84c9"

    def install
      bin.install "danger-x64" => "danger"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/danger/danger-js/releases/download/13.0.8/danger-macos-arm64.zip"
    sha256 "1ce9288d097295ebf9179bc59503dc793d4baef0b5e7946847f88f2a81108e43"

    def install
      bin.install "danger-arm64" => "danger"
    end
  end
end
