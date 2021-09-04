class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.11.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "7a6a5e547c456d1d280ff9a6dfc9c20451ba062a85126e0015cc7b51b133c414"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
