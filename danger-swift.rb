class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "1.5.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "93c0ca6c12a37fd51b1f001610ccbd024fa988df0425ccd18b34e60503ec29ee"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
