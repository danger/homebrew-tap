class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.20.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "e1eb144ea5339b3766e8a71298841ecdb51ea87b43c8c43d135000a9d531d120"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 14
  depends_on :xcode => ["14", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
