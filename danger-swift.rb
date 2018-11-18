class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "0.7.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "9c4f0e7c4534f763aefa2519fd0b04fc0cd4f72dce6528c11db49a3e393680ea"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
