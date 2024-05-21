class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"

  if Hardware::CPU.intel?
    url "https://github.com/danger/danger-js/releases/download/12.3.0/danger-macos-x64.zip"
    sha256 "ea650636aea4787c78c0bd39f8d6807b38104f465a8e29701a1eb983afae7236"

    def install
      bin.install "danger-x64" => "danger"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/danger/danger-js/releases/download/12.3.0/danger-macos-arm64.zip"
    sha256 "33101ba6427dd0b0bc53d1cbe177e3c76b28eacaa76af6e573cd6e6248660a95"

    def install
      bin.install "danger-arm64" => "danger"
    end
  end
end
