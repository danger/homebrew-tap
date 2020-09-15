class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.5.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "737092138aaf32fe8a6956d3ff28ba26a60c837ac3e1c888f75613e52c056130"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
