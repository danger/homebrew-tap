class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "1.6.3"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "8562411acb71452ac2622d7dd3b81a6cff021a10844f7a2df973d0646fe55f42"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
