class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"

  if Hardware::CPU.intel?
    url "https://github.com/danger/danger-js/releases/download/12.0.1/danger-macos-x64.zip"
    sha256 "b04e3a4699a5a53e028bac765fac3b3cdcb2741b29f730b57a8c41ab04c6f66e"

    def install
      bin.install "danger-x64" => "danger"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/danger/danger-js/releases/download/12.0.1/danger-macos-arm64.zip"
    sha256 "0b06497e41cec2cfb447a6c205381da59e58477e8aa4a5dca1ba6a625b642252"

    def install
      bin.install "danger-arm64" => "danger"
    end
  end
end
