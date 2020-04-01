class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.2.2"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "349c6dfe8f2c46db7d91c3dea4a725c59dbfc2ae7103219802dc006a92501bbb"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
