class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.3.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "43d9ca3a9e8a5a735e79a333f8affb26ddd26fc75bdbc3fa31c27c205c9f85c2"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
