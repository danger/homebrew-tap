class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.0.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "6fa539625c1899ef526049cea24a15d2e69d05e3f0fda1895e38f02829110777"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
