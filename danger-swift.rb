class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "0.6.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "e717c45d6396298d6666334946f285062a2a26421ac80aa0307a2827056f4257"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
