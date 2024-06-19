class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"

  if Hardware::CPU.intel?
    url "https://github.com/danger/danger-js/releases/download/12.3.2/danger-macos-x64.zip"
    sha256 "3f645c129dd420b9e74c2b175d7921b5d9162c0fe25c8074db4d817e77e4c4b8"

    def install
      bin.install "danger-x64" => "danger"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/danger/danger-js/releases/download/12.3.2/danger-macos-arm64.zip"
    sha256 "641966a31731c41bc418acd2128d63bb5df061b03522d20fdfb4366bcb664405"

    def install
      bin.install "danger-arm64" => "danger"
    end
  end
end
