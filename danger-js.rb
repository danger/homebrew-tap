class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"

  if Hardware::CPU.intel?
    url "https://github.com/danger/danger-js/releases/download/14.0.4/danger-macos-x64.zip"
    sha256 "2e7c62360c9181ed4c0c1b9854b7757d9d5992afe6aff072aeaf94f6e5b55bb5"

    def install
      bin.install "danger-x64" => "danger"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/danger/danger-js/releases/download/14.0.4/danger-macos-arm64.zip"
    sha256 "e2b74b373429dc652c82aada023a0cc8c548e22e24018166f3338cf48ae403b8"

    def install
      bin.install "danger-arm64" => "danger"
    end
  end
end
