class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.6.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "5b04f8d6ffb504b354ce99e31bbe4767d0b1111287014c31eba30f5fdcad31bc"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
