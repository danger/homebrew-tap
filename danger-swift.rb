class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.8.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "0dcd833980eb942a89bfaa69be00fe955f94062c154225d5db712f5187ef069d"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
