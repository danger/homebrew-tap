class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "0.7.2"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "434ce13282a8372eae61f08d01e76575b3c8c4fdcee2e14ee942df8a4edec786"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
