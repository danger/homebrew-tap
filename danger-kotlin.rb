class DangerKotlin < Formula
  desc "Write your Dangerfiles in Kotlin"
  homepage "https://github.com/danger/kotlin"
  version "1.0.0"
  url "https://github.com/danger/kotlin/archive/#{version}.tar.gz"
  sha256 "73ffc341a3188608863363302bf37e4f074ba7d6462a7a9b10d8eef44eabd0d6"
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
