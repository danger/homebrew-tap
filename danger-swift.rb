class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "0.3.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "bdf62464c847b9588c4e73848b70d86f62eba49066b87ee15e0ae7cc6f62b953"
  head "https://github.com/danger/danger-swift.git"

  depends_on :xcode

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
