class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "0.3.6"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "71b83ced89af57e387f1d52e8d1361ed9bbc5d77a48913c3af57afb54746de5f"
  head "https://github.com/danger/danger-swift.git"

  depends_on :xcode

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
