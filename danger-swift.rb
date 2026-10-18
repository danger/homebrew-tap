class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.23.1"

  # Universal binary (arm64 + x86_64) — works on Apple Silicon and Rosetta.
  url "https://github.com/danger/danger-swift/releases/download/3.23.1/danger-swift-macos-universal.tar.gz"
  sha256 "e456b064bdcfd916426441dbed70bef9ce471bac5c3a3a1526acdfb21ab3f119"

  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    bin.install "danger-swift"
  end

  test do
    assert_match "danger-swift", shell_output("#{bin}/danger-swift --help 2>&1")
  end
end
