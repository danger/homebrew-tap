class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"

  if Hardware::CPU.intel?
    url "https://github.com/danger/danger-js/releases/download/13.0.10/danger-macos-x64.zip"
    sha256 "fad72a8204aa0d1971986d54a4fd67660bc7545ddc069b535dbef06ae9f4c780"

    def install
      bin.install "danger-x64" => "danger"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/danger/danger-js/releases/download/13.0.10/danger-macos-arm64.zip"
    sha256 "759cff437471588fcbbe3e1f24bcf3f783d3d93e514e855c0b2be316c4362cf8"

    def install
      bin.install "danger-arm64" => "danger"
    end
  end
end
