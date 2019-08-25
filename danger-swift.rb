class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "2.0.2"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "6dd501bbb635ae09ca5fa468c6ad31833c8e83fb6db2ab794bb016e7dee51a11"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
