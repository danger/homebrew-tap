class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.12.1"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "3932e2659546a77169f2d08d7c00d5ea547113b848f0c5821fd1ba9bb4162b3c"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
