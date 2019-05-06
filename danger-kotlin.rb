class DangerKotlin < Formula
  desc "Write your Dangerfiles in Kotlin"
  homepage "https://github.com/danger/kotlin"
  version "0.1.0"
  url "https://github.com/danger/kotlin/archive/#{version}.tar.gz"
  sha256 "dc64329cf832375aa0bec5301bd6b6a79da8bce8baf690f77eff32276eed4de3"
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
