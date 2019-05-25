class DangerKotlin < Formula
  desc "Write your Dangerfiles in Kotlin"
  homepage "https://github.com/danger/kotlin"
  version "0.1.5"
  url "https://github.com/danger/kotlin/archive/#{version}.tar.gz"
  sha256 "40d326174c307060e2ae21d4d386e64f3348f2399de7693e936634b4a494dd04"
  head "https://github.com/danger/kotlin.git"

  # Use the vendored danger
  depends_on "danger/tap/danger-js"
  depends_on "kotlin"
  depends_on "maven"
  depends_on "gradle"
  depends_on "holgerbrandl/tap/kscript"

  def install
    system "scripts/brew_install.sh"
    system "make", "install", "PREFIX=#{prefix}"
  end
end
