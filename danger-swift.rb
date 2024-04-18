class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.18.1"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "7139a2be3950e7c9ff007a57ca393486bc4f55971e7be6bc1929225df33e1d8f"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 12
  depends_on :xcode => ["12", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
