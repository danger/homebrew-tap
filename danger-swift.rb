class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "0.5.1"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "da25ee34b410741b7bb2a150a0d25e893da962afb0b0aad320a8ec8a150e973a"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
