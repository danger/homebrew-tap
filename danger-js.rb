class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"

  if Hardware::CPU.intel?
    url "https://github.com/danger/danger-js/releases/download/14.0.5/danger-macos-x64.zip"
    sha256 "21e07f96cc1865cfe8246e4074856a8a0d1437963f969b7b5a58abd438d4eb19"

    def install
      bin.install "danger-x64" => "danger"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/danger/danger-js/releases/download/14.0.5/danger-macos-arm64.zip"
    sha256 "8429dd42475fec9cf16732f12a38b7b3e70e0da164db6ca698a23acc0e4c7766"

    def install
      bin.install "danger-arm64" => "danger"
    end
  end
end
