class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.21.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "30c2af36bc7b3e39e4987ad5058c3929745140116e08556cb272b78b49316bfc"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 14
  depends_on :xcode => ["14", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
