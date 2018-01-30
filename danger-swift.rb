class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "0.3.2"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "5a0edddf7429906526a431cbf929dc97740a9f94b340bed86c4af4ca68b86103"
  head "https://github.com/danger/danger-swift.git"

  depends_on :xcode

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
