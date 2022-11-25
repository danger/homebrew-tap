class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.15.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "da6858bfba94c3503703fa1c04341ff002ff7a6bd2e375ce0cb33e667199611d"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 12
  depends_on :xcode => ["12", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
