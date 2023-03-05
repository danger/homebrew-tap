class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.16.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "ca86b84be85a6da95708990bcddf51d34f5148d7334a696317ee49403d79bada"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 12
  depends_on :xcode => ["12", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
