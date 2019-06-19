class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "1.6.1"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "292daaa28142db7d85e716802d6284e10795b6fb567f6706d478234121d03543"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
