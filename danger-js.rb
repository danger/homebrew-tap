class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"

  if Hardware::CPU.intel?
    url "https://github.com/danger/danger-js/releases/download/13.0.4/danger-macos-x64.zip"
    sha256 "795e3504cab13152b6d8a5d3c1dde64e13829638631adcdbdf82b5ef8c12435c"

    def install
      bin.install "danger-x64" => "danger"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/danger/danger-js/releases/download/13.0.4/danger-macos-arm64.zip"
    sha256 "eaeb2d85d0dddd5d80166dd616d6d0c9a44efd09428af4f05f08b8d5b4b7e4a7"

    def install
      bin.install "danger-arm64" => "danger"
    end
  end
end
