class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"

  if Hardware::CPU.intel?
    url "https://github.com/danger/danger-js/releases/download/12.2.1/danger-macos-x64.zip"
    sha256 "f41e05a6496075bd421eaaac0a8414ef3cf7d68bf9fbbd32ee6626d11bf0e19d"

    def install
      bin.install "danger-x64" => "danger"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/danger/danger-js/releases/download/12.2.1/danger-macos-arm64.zip"
    sha256 "a5ba255601a269e1adc4a7ff6903af7bf907d3c743d310ff21e8aa97aaca88fa"

    def install
      bin.install "danger-arm64" => "danger"
    end
  end
end
