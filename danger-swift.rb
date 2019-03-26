class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "1.5.1"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "03b7883f282bcc9859e6b15b6d69356e724ab224a9fd9d2f8da0e427ce6fbcc7"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
