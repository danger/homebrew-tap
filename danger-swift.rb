class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.1.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "919697fd69f279f31bff336b5df198f730e347b1fe9e2771d986313c68ab8ca5"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
