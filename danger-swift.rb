class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.20.2"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "d18fc97058200f1f08c41002502ec1f6e458f49862f0b189a17e2f3224fbcee8"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 14
  depends_on :xcode => ["14", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
