class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.6.1"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "d21460331d00595504e98408c68d974a59927eb1807d0ed8e89ed57232eccb22"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
