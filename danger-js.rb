class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"

  if Hardware::CPU.intel?
    url "https://github.com/danger/danger-js/releases/download/11.2.5/danger-macos-x64.zip"
    sha256 "d9e8efc10f1eb386585934da8ab5636bbe78d9d92b195ddad702b3c67e9683e0"

    def install
      bin.install "danger-x64" => "danger"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/danger/danger-js/releases/download/11.2.5/danger-macos-arm64.zip"
    sha256 "779e6d4d2e2bffc82f2f59fd12b6b21a17f8008acc7469aebebf13c72a642d55"

    def install
      bin.install "danger-arm64" => "danger"
    end
  end
end
