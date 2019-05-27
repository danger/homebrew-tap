class DangerKotlin < Formula
  desc "Write your Dangerfiles in Kotlin"
  homepage "https://github.com/danger/kotlin"
  version "0.1.4"
  url "https://github.com/danger/kotlin/archive/#{version}.tar.gz"
  sha256 "15075deaaffd96c2833169c381b38351fcb97190699f8545bad88776eb7f1fde"
  head "https://github.com/danger/kotlin.git"

  # Use the vendored danger
  depends_on "danger/tap/danger-js"
  depends_on "kotlin"
  depends_on "maven"
  depends_on "gradle"
  depends_on "holgerbrandl/tap/kscript"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
