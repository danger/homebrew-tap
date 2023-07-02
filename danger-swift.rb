class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.17.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "39963124f4256c055bb1269f3b58fd23eddcafb1db4968431711abf82d833416"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 12
  depends_on :xcode => ["12", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
