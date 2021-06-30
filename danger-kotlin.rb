class DangerKotlin < Formula
  desc "Write your Dangerfiles in Kotlin"
  homepage "https://github.com/danger/kotlin"
  version "0.7.1"
  url "https://github.com/danger/kotlin/archive/#{version}.tar.gz"
  sha256 "ac54b2a0d7b15d9e2611778f76257c1fe10ef69d83305540873e9a64027e4e78"
  head "https://github.com/danger/kotlin.git"

  # Use the vendored danger
  depends_on "danger/tap/danger-js"
  depends_on "kotlin"
  depends_on "maven"
  depends_on "gradle"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
