class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.21.1"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "33d81bac26f2e6cbca4dc7677c9a181dcc6c1b486e04b94679cf634810a3a033"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 14
  depends_on :xcode => ["14", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
