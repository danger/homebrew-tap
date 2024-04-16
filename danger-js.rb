class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"

  if Hardware::CPU.intel?
    url "https://github.com/danger/danger-js/releases/download/12.1.0/danger-macos-x64.zip"
    sha256 "eb525a9b58e882f2d8dac2342500e9f442729f56e8ecb8eb5dd84f2ea30a93ee"

    def install
      bin.install "danger-x64" => "danger"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/danger/danger-js/releases/download/12.1.0/danger-macos-arm64.zip"
    sha256 "1b04f115df02b8ab37985e5400204a337f5771e0061e26f99087561f65241894"

    def install
      bin.install "danger-arm64" => "danger"
    end
  end
end
