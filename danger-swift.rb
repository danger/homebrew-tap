class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "1.0.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "5dde02259782b88ddf59ae4819aac648d2c3500a6539327b660e936e4475a92f"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
