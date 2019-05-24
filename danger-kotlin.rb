class DangerKotlin < Formula
  desc "Write your Dangerfiles in Kotlin"
  homepage "https://github.com/danger/kotlin"
  version "0.1.2"
  url "https://github.com/danger/kotlin/archive/#{version}.tar.gz"
  sha256 "ee0eb11ba1f37d469e25b3fb5baf6d4019fdcd99bc562e31868b30d04752afa5"
  head "https://github.com/danger/kotlin.git"

  # Use the vendored danger
  depends_on "danger/tap/danger-js"
  depends_on "kotlin"
  depends_on "maven"
  depends_on "gradle"
  depends_on "holgerbrandl/tap/kscript"

  def install
    system "make", "brew", "PREFIX=#{prefix}"
  end
end
