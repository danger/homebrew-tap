class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "1.3.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "4ee3bdf0ffa03c78995279e1e685ddf1c42c9ad9b8f78b0219ee14d45193681a"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
