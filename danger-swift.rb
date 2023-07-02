class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.17.1"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "6461c06ee874bb2ede4a0d5d417c5c88e01e40d255fe3838956b4f8ecdb953e8"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 12
  depends_on :xcode => ["12", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
