class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.22.1"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "ec41e4aaa93c1fdd22dedfc98a9a9f843ce794d648b599b6dcb21e8d649a06b9"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 14
  depends_on :xcode => ["14", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
