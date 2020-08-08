class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.4.1"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "4ca7039a0e6df78d660631bd519ea169faf1cb159532e8be5c4bc2c02f992869"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
