class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "1.5.3"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "dabbbafc2e604e09cd41017b553b45659af082279b22836a2558a712ca630f1a"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
