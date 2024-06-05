class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"

  if Hardware::CPU.intel?
    url "https://github.com/danger/danger-js/releases/download/12.3.1/danger-macos-x64.zip"
    sha256 "e2592e857703b17be2751d4ef14582f7c591c659945cbcabeaa703cb5c4454ff"

    def install
      bin.install "danger-x64" => "danger"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/danger/danger-js/releases/download/12.3.1/danger-macos-arm64.zip"
    sha256 "7e9d1d71f2a424bdf96a9909019ec14a77b228227503f43e5864941b094f089b"

    def install
      bin.install "danger-arm64" => "danger"
    end
  end
end
