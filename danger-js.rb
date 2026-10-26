class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"

  if Hardware::CPU.intel?
    url "https://github.com/danger/danger-js/releases/download/14.1.0/danger-macos-x64.zip"
    sha256 "14c3fd4ec2e36e26ac02e121d05f69c7759b710af55f5a2af476ca9b5c345aef"

    def install
      bin.install "danger-x64" => "danger"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/danger/danger-js/releases/download/14.1.0/danger-macos-arm64.zip"
    sha256 "5fa2554e116181be8a1185f4147544417311274f9e8ea53866344b7face161a4"

    def install
      bin.install "danger-arm64" => "danger"
    end
  end
end
