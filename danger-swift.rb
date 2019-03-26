class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "1.5.2"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "bfd665de3f0d0241bedb7cd217022ce45d72063f7a129cba4767bed0d794e9a3"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
