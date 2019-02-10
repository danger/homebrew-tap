class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "1.3.1"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "66555ea7da240db5d71a90cc9a7947f42261fbc6c0251b7c350bf35366a51ff2"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
