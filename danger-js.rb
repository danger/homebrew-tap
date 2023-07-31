class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"

  if Hardware::CPU.intel?
    url "https://github.com/danger/danger-js/releases/download/11.2.8/danger-macos-x64.zip"
    sha256 "04503f042eec9a4a861fdfd552318427341da27f845a78feef7b641b482291e9"

    def install
      bin.install "danger-x64" => "danger"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/danger/danger-js/releases/download/11.2.8/danger-macos-arm64.zip"
    sha256 "eaf667a1e76e7c855fef7c36a6e90ed8b62b18256063abd4e6709120db1da1f8"

    def install
      bin.install "danger-arm64" => "danger"
    end
  end
end
