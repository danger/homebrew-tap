class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.4.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "ec0e1022a24298ba2318e71d1beefadbc438f7d3aedcfae25afc09a08cb9087f"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
