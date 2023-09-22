class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"

  if Hardware::CPU.intel?
    url "https://github.com/danger/danger-js/releases/download/11.3.0/danger-macos-x64.zip"
    sha256 "618c6fe63c0cdf244d68188aaa18f41e663ce31a90d84f162ce03e62e54f5d03"

    def install
      bin.install "danger-x64" => "danger"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/danger/danger-js/releases/download/11.3.0/danger-macos-arm64.zip"
    sha256 "bd63361c9926d93a84f519db3ce9035d3a69382804db4ad1c24a4f705634ab09"

    def install
      bin.install "danger-arm64" => "danger"
    end
  end
end
