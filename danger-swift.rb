class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "0.3.4"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "28abe36cc7033816d476f8c9acc8d42fc573b78a0216f94f5565493622a1a2fb"
  head "https://github.com/danger/danger-swift.git"

  depends_on :xcode

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
