class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "0.4.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "7d924b866884cb92074bf1678fe967701731fafab8921a35083cb590b9d9722d"
  head "https://github.com/danger/danger-swift.git"

  depends_on :xcode

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
