class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.18.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "2b11c9b093a7fe804a941f32c3cf5b909d2d7643313bb7bd2a2f9a820aa2ea43"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 12
  depends_on :xcode => ["12", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
