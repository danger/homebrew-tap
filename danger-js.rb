class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"

  if Hardware::CPU.intel?
    url "https://github.com/danger/danger-js/releases/download/12.3.4/danger-macos-x64.zip"
    sha256 "bd4964316891e026c52671b265b8572eddd7033741f31c65b42d37e8b87d3fe8"

    def install
      bin.install "danger-x64" => "danger"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/danger/danger-js/releases/download/12.3.4/danger-macos-arm64.zip"
    sha256 "620b08eb3fab84aa70a0329b10221b87af6ee0a8d60d8f696bda384ed8e17ae6"

    def install
      bin.install "danger-arm64" => "danger"
    end
  end
end
