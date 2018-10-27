class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "0.5.1"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "1da18a4df44e3a68c3af0c8fbf24b315c5679f9d214fcf80ba999a947666d70d"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
