class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.12.3"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "7a6056621b11eb9fd78e7a8c08d591018aa6ede8ba3999be6c2e32a286bdd0eb"
  head "https://github.com/danger/danger-swift.git"

  # Runs only on Xcode 10
  depends_on :xcode => ["10", :build]
  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
