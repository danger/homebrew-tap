class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "0.5.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "762bbaa6ae73a784ebae50510b60710dc91c07b2d6e84e991931bb3c82c253b2"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
