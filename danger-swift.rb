class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "0.4.1"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "4c181f65492cb43879b706e39f52abe23013c14ffa6dba130ec4344c240db9c2"
  head "https://github.com/danger/danger-swift.git"

  depends_on :xcode

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
