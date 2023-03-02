class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"

  if Hardware::CPU.intel?
    url "https://github.com/danger/danger-js/releases/download/11.2.4/danger-macos-x64.zip"
    sha256 "863722ad74f67ac20abecc75b986fafc1ef712f69981641a1c649f611514666c"

    def install
      bin.install "danger-x64" => "danger"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/danger/danger-js/releases/download/11.2.4/danger-macos-arm64.zip"
    sha256 "b2c89a5ab8e473f9f7e3272a50bf2a4c2cbbbc82bda2907272d9c3656b697a02"

    def install
      bin.install "danger-arm64" => "danger"
    end
  end
end
