class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.7.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "479868cc6e8d436d94590ce87b48f4004a58e820888f7a9d0fabb58e32c43b26"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
