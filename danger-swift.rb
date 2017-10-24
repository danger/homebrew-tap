class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "0.2.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "e51b0ffd8c51b7ffcdbb13331675bd87d5ed009ea0b0379d627304311fd0bab0"
  head "https://github.com/danger/danger-swift.git"

  depends_on :xcode

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
