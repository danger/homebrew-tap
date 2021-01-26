class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.7.2"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "3d6dac9d3f0473e07c00eb87cdc98436264feb32b841e0fc47afc3050c697c3f"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
