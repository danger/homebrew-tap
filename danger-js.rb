class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"

  if Hardware::CPU.intel?
    url "https://github.com/danger/danger-js/releases/download/11.2.7/danger-macos-x64.zip"
    sha256 "f4af44f5a44a5cf9b6032dd7087995de6041adf8fe4cc8ca1654df95432a7d67"

    def install
      bin.install "danger-x64" => "danger"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/danger/danger-js/releases/download/11.2.7/danger-macos-arm64.zip"
    sha256 "33bd54a009b6589071757d5096fbfac2bcbca3f933c7568265123e39b5f1eca8"

    def install
      bin.install "danger-arm64" => "danger"
    end
  end
end
