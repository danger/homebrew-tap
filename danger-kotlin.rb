class DangerKotlin < Formula
  desc "Write your Dangerfiles in Kotlin"
  homepage "https://github.com/danger/kotlin"
  version "0.6.0"
  url "https://github.com/danger/kotlin/archive/#{version}.tar.gz"
  sha256 "dc3fbe20cd1a26bcd10f5f4e1fb8293a70eccc301b0e046fa6e5c9c3827c5a0a"
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
