class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"

  if Hardware::CPU.intel?
    url "https://github.com/danger/danger-js/releases/download/11.3.1/danger-macos-x64.zip"
    sha256 "f20d7d2fa168a845612781ec37041d20f8fe4221a8e47a9f098a6718f3eb7b28"

    def install
      bin.install "danger-x64" => "danger"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/danger/danger-js/releases/download/11.3.1/danger-macos-arm64.zip"
    sha256 "766e49ce5c113f4449efff25c2d4b6802e6bc8e7c51a12153e6687cd29024b02"

    def install
      bin.install "danger-arm64" => "danger"
    end
  end
end
