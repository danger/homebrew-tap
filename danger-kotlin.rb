class DangerKotlin < Formula
  desc "Write your Dangerfiles in Kotlin"
  homepage "https://github.com/danger/kotlin"
  version "0.2.0"
  url "https://github.com/danger/kotlin/archive/#{version}.tar.gz"
  sha256 "038c854bce6428cd5d785ad379226023ef558411c834a989e92f56bf975772e1"
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
