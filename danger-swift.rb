class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.12.2"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "b452efd592ba54b250654260d1f7530b968627a551c476a2fe042f3d0672d8f8"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
