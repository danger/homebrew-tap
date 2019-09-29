class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "2.0.5"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "5c23e01508ca9fd48b0ee998b5d27f39a751316e7ce357b3a8e5b53d465c67bb"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
