class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "1.2.1"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "a2d1b5e39f3c2048df643e6765586a441eec4e8848ab2498300c575c3d146213"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
