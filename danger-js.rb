class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"

  if Hardware::CPU.intel?
    url "https://github.com/danger/danger-js/releases/download/11.2.3/danger-macos-x64.zip"
    sha256 "82e13c39dd388fc2cc12a1377b56685b1c9450d6b6eba7d5d3d45803222f341d"

    def install
      bin.install "danger-x64" => "danger"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/danger/danger-js/releases/download/11.2.3/danger-macos-arm64.zip"
    sha256 "2389f905a18a4d82b2b6a9c82dbb46b91254f5ef20e0f9bbec28375c3e0e90fc"

    def install
      bin.install "danger-arm64" => "danger"
    end
  end
end
