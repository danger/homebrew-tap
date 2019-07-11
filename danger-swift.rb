class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "1.6.5"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "f1d820734b610bdcd5d769a97db1c1f503f9eb84f2421682998a107e61c7a2f2"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
