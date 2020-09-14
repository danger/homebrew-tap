class DangerKotlin < Formula
  desc "Write your Dangerfiles in Kotlin"
  homepage "https://github.com/danger/kotlin"
  version "0.7.0"
  url "https://github.com/danger/kotlin/archive/#{version}.tar.gz"
  sha256 "db54e7b5b045cd75d4e823d8e074ffc4b9beee113c9057d8d89c7fa4576341e9"
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
