class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "1.4.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "3f5a2add2f25eb354a5cba3b17734cea05707823af1ad9f6d6d0eb352a8b6647"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
