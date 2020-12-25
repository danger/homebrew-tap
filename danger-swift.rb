class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.7.1"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "8e7d7268e7ea02c6faf1f519df08e4d47170065028fc005b10291008a7e2ec79"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
