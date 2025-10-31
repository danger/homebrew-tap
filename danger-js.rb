class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"

  if Hardware::CPU.intel?
    url "https://github.com/danger/danger-js/releases/download/13.0.5/danger-macos-x64.zip"
    sha256 "ba8b5353e9db9a84a4bcd86109c821a2c94f1e88624f4019112149d423c8aa0a"

    def install
      bin.install "danger-x64" => "danger"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/danger/danger-js/releases/download/13.0.5/danger-macos-arm64.zip"
    sha256 "af7377f8a22eea1e790af3e38c12df9fa5a80f15d800403083719f30349051a9"

    def install
      bin.install "danger-arm64" => "danger"
    end
  end
end
