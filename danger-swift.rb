class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "0.2.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "c9790d30a7e86e048302b5af8d55076676fd34d25fc80b3bcc248d172a971cb6"
  head "https://github.com/danger/danger-swift.git"

  depends_on :xcode

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
