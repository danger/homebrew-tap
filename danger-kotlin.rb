class DangerKotlin < Formula
  desc "Write your Dangerfiles in Kotlin"
  homepage "https://github.com/danger/kotlin"
  version "0.5.1"
  url "https://github.com/danger/kotlin/archive/#{version}.tar.gz"
  sha256 "c58bc36d17ba5adac52360b38bc79987eb47f2b53208a0258767ad5aea5bae93"
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
