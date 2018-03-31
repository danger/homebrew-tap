class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "0.3.5"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "609158ffc37c9922514496c0eeb40ec05de323c0ed09e0b23950d54d19c26670"
  head "https://github.com/danger/danger-swift.git"

  depends_on :xcode

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
