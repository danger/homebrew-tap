class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "0.3.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "874cc40429eaa17a917e98fef3e580c448e3755ccc13dc7a639aba3b34c485c9"
  head "https://github.com/danger/danger-swift.git"

  depends_on :xcode

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
