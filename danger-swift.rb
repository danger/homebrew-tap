class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "0.7.1"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "d643a301fed50e7f06ca6339411f5dcafa2ebeffba861a628a7b2c2106d9b2be"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
