class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.11.1"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "684f12ce35532c4421aea262091036f52d051a95c27dda022452a6f63229d2a4"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
