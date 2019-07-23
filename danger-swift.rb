class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "2.0.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "88f76df9d4b20b51c234fee054262cbfb4c471016614883624b56a295f492ed1"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
