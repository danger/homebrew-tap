class DangerKotlin < Formula
  desc "Write your Dangerfiles in Kotlin"
  homepage "https://github.com/danger/kotlin"
  version "0.1.1"
  url "https://github.com/danger/kotlin/archive/#{version}.tar.gz"
  sha256 "ef7386e5ac50e0bddeff610d35449bbd407d05d9453c77785eb66c6c06798263"
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
