class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "1.3.2"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "0fa8676643433ea0df7bafdaedf8024d41fde4fa270643da17e206071e6296e7"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
