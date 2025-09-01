class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.22.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "f3176f23aee2354197eaa8c6d548c6614850c12133e1d7221526357e97cfbbf8"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 14
  depends_on :xcode => ["14", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
