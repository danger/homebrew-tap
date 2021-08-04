class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.10.2"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "a9919ab083846dd09297f2960522d69c48b8a2b00cca9b4003049e12f5c38c31"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
