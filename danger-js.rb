class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"

  if Hardware::CPU.intel?
    url "https://github.com/danger/danger-js/releases/download/12.2.0/danger-macos-x64.zip"
    sha256 "db71301a1dab128e6359344ffd3d19c1dc3b4cc82c4178f94afbe3a06f099845"

    def install
      bin.install "danger-x64" => "danger"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/danger/danger-js/releases/download/12.2.0/danger-macos-arm64.zip"
    sha256 "5233ba2d25c98189d60e4da22a0a8db1fd0e2d68929ca4498a5ccc3793224dfe"

    def install
      bin.install "danger-arm64" => "danger"
    end
  end
end
