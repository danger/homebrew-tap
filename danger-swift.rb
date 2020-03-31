class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.2.1"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "92748fd95761fca23a70da7d97af4a49e4937f98bb277e53c8f406425328040f"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
