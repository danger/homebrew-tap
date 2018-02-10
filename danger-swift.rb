class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "0.3.3"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "94eb3215f01dc3bbe0ebb909215d34e06fb762fdff2dfb9653a1dc3af6f1abdf"
  head "https://github.com/danger/danger-swift.git"

  depends_on :xcode

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
