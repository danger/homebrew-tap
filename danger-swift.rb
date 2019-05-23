class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "1.5.5"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "949c5dcc9d45334f4c91dcb113a2583c1290bc3aa7c50e897976248189d00e28"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
