class DangerKotlin < Formula
  desc "Write your Dangerfiles in Kotlin"
  homepage "https://github.com/danger/kotlin"
  version "0.6.1"
  url "https://github.com/danger/kotlin/archive/#{version}.tar.gz"
  sha256 "088d15999e0a7d2bcab5a77634621654b9193e08cc0a98897d14d5a6d1b1f837"
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
