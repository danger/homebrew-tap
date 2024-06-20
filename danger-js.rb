class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"

  if Hardware::CPU.intel?
    url "https://github.com/danger/danger-js/releases/download/12.3.3/danger-macos-x64.zip"
    sha256 "cd4944ea5d3de4d6e82a7c616cac29d5c5730d514fa0049a60eeec34003a5727"

    def install
      bin.install "danger-x64" => "danger"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/danger/danger-js/releases/download/12.3.3/danger-macos-arm64.zip"
    sha256 "e3e21069bd7d8383b0ff3d62816113e0af9c25c94b926cfce48b0fd9da92c7c3"

    def install
      bin.install "danger-arm64" => "danger"
    end
  end
end
