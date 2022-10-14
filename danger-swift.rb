class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.14.2"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "b0134573f8632bfb5a48f5d605cc9209433e0dbe74513d268eef3c0dd83cb802"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 12
  depends_on :xcode => ["12", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
