class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"

  if Hardware::CPU.intel?
    url "https://github.com/danger/danger-js/releases/download/14.0.6/danger-macos-x64.zip"
    sha256 "33f0de9f9d660630cd690cbeb27a66e58a5d9a6aa39a65507def65c885ebbe38"

    def install
      bin.install "danger-x64" => "danger"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/danger/danger-js/releases/download/14.0.6/danger-macos-arm64.zip"
    sha256 "147dcb8c5bcd052c3713fec6f4c2cc6f6fec621f6f498be602b397d3f8770df5"

    def install
      bin.install "danger-arm64" => "danger"
    end
  end
end
