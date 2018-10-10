class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "0.4.2"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "492968a0b1fdb629fe60df8d117e121e9370550a00d0071fc2bf685ec893ca19"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
