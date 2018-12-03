class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version ""
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "a6b771fdc8cfb6325a36e31ba63b1581412170d2ae069f43042c32f31445d0a6"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
