class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.10.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "7c1e13225ad8b2a1e96c80c2045274607dcd8f4f3bb1cb0f9d11cbca0af10b5f"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
