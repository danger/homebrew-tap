class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "1.6.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "ec8eae8033b0e1a0522b596d7b919018807029e1f469b15fddef2a3167704b15"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
