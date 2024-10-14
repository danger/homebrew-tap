class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.20.1"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "e4df1e4e3cb3b1c3aa6e73c9b9a42078d687b792e964da7ca85701a3f8b036d6"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 14
  depends_on :xcode => ["14", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
