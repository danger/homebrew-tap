class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "2.0.4"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "70e48b65ba29315274b0b900bb53d77567b8c91b408ef324e47ef77a8d8731dc"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
