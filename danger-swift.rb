class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.10.1"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "f7f12f3fc86287ea35185d6a738b76c93bcc11781a50880380159ba2061ec48b"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
