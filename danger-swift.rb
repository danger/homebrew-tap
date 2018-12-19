class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "0.8.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "a797d75cd8654610e2c2e87ed6fa9439f56642f91220cf791d01590f20cfcce1"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
