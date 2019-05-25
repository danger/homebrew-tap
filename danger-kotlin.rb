class DangerKotlin < Formula
  desc "Write your Dangerfiles in Kotlin"
  homepage "https://github.com/danger/kotlin"
  version "0.1.3"
  url "https://github.com/danger/kotlin/archive/#{version}.tar.gz"
  sha256 "aa75958b80967e3c411d70f222546d5bc646e349a8bd961c19e6432e2201f937"
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
