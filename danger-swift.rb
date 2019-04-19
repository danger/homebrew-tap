class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "1.5.4"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "a8231d5a17068e7364041419c0e28e2e3b54ce4c16e246689e74dd9f58af40d3"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
