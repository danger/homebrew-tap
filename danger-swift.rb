class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "1.5.6"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "cfb99d3548bda195cf6208c501b3f0fefc37f199746f1b7d52c41bc33fe05aaa"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
