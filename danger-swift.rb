class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.21.2"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "9d564e61796900b16651af99c35204dd1dfd434c4248a23ec01c1e14c198a7c1"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 14
  depends_on :xcode => ["14", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
