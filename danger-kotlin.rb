class DangerKotlin < Formula
  desc "Write your Dangerfiles in Kotlin"
  homepage "https://github.com/danger/kotlin"
  version "0.3.0"
  url "https://github.com/danger/kotlin/archive/#{version}.tar.gz"
  sha256 "a846674dfc9f74e152dcb4045ecc0ea043c0ad7381ac546a9525487941cb7c83"
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
