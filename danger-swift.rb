class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "2.0.3"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "184292f8b2ba3cfbc0e2e1f889550ce08a878a6ec66b935771df440c776e8169"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
