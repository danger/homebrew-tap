class DangerSwift < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "3.23.0"

  # Universal binary (arm64 + x86_64) — works on Apple Silicon and Rosetta.
  url "https://github.com/danger/danger-swift/releases/download/3.23.0/danger-swift-macos-universal.tar.gz"
  sha256 "394f501d2fd6dc6f0fc13ec7999e32ca0e9e530ef743387f8260d88ee01ff05d"

  # Use the vendored danger
  depends_on "danger/tap/danger-js"

  def install
    bin.install "danger-swift"
  end

  test do
    assert_match "danger-swift", shell_output("#{bin}/danger-swift --help 2>&1")
  end
end
