class DangerKotlin < Formula
  desc "Write your Dangerfiles in Kotlin"
  homepage "https://github.com/danger/kotlin"
  version "1.3.1"
  url "https://github.com/danger/kotlin/releases/download/#{version}/danger-kotlin-macosArm64.tar"
  sha256 "a2ca0ea97539eb46153dce865ec1a817687b42b4bbaf09a25937c0fb8266b407"
  head "https://github.com/danger/kotlin.git"

  # Use the vendored danger
  depends_on "danger/tap/danger-js"
  depends_on "kotlin"

 def install
    libexec.install %w[bin]
    prefix.install %w[lib]
    (bin/"danger-kotlin").write_env_script libexec/"bin/danger-kotlin", Language::Java.overridable_java_home_env
 end
end
