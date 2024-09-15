class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.19.1"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "8ba1c25d9d601be5f2ec92d94e4ec541735f618cc86b8adb9a4fb7d2cccce01c"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 14
  depends_on :xcode => ["14", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
