class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "1.6.2"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "c856f2a6b047cfbc97ffd9778c9cea1383f5b13a7bfa748ea893bc5ea5abfae0"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
