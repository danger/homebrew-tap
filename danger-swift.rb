class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "0.3.1"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "30c459b7ae8fb93cbdb0e573c71bfcb6bfdcb8f7382bcbe830523ca7e85afe52"
  head "https://github.com/danger/danger-swift.git"

  depends_on :xcode

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
