class DangerKotlin < Formula
  desc "Write your Dangerfiles in Kotlin"
  homepage "https://github.com/danger/kotlin"
  version "0.3.1"
  url "https://github.com/danger/kotlin/archive/#{version}.tar.gz"
  sha256 "e77585014cf27f8e5df4dd9af9befa2df1424f5c38c0eccf5627b8e3bdcb66b8"
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
