class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "1.2.2"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "cfa78fb311e127e45ca52651fabddbafc63c32d53c22906b8581dbe696dae7b8"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
