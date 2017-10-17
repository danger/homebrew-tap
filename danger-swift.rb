class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "0.1.1"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "69f9b1b545b85ede0c2e7c255d678b2b86574ac7ea8bf6f4583389011448d3d7"
  head "https://github.com/danger/danger-swift.git"

  depends_on :xcode

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
