class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"

  if Hardware::CPU.intel?
    url "https://github.com/danger/danger-js/releases/download/11.2.1/danger-macos-x64.zip"
    sha256 "31f33cdf63cdc47d8f07c517ac2b15a704a18aded19cbdfd6a2114235b6c6b64"

    def install
      bin.install "danger-x64" => "danger"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/danger/danger-js/releases/download/11.2.1/danger-macos-arm64.zip"
    sha256 "ac809811d4cb9604a48eac9d8b24c01f54a5d32a3e12aaccd438b88eb7128b57"

    def install
      bin.install "danger-arm64" => "danger"
    end
  end
end
