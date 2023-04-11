class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"

  if Hardware::CPU.intel?
    url "https://github.com/danger/danger-js/releases/download/11.2.6/danger-macos-x64.zip"
    sha256 "147ce1d1928ea1908f1399c1e0cb11f0b8e875629a7324680dfcb7d5a9936c57"

    def install
      bin.install "danger-x64" => "danger"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/danger/danger-js/releases/download/11.2.6/danger-macos-arm64.zip"
    sha256 "885501bea3639e805ebead1188da225af1b96df50c7034816efddd949040c69b"

    def install
      bin.install "danger-arm64" => "danger"
    end
  end
end
