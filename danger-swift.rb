class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.14.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "81b11eef496993ff15c2e5b3699079a2f8b40c60abd90b1b213fe6419910a5ca"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 12
  depends_on :xcode => ["12", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
