class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.3.1"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "d5834d95e53e07118f3c4f5c0e1e18e71019bf997bfc86f3946f7ceeb6d1a86c"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
