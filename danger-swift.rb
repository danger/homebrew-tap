class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.14.2"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "69f6a44f62b2862937fc1af8b10f9d42a177544d75c801c47bc84a431d9fef43"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 12
  depends_on :xcode => ["12", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
