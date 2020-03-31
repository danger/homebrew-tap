class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.2.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "628557eac333b1419d7f0182604c051ab3f5b7bd664f8b9577843f6332a7d52a"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
