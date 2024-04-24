class DangerKotlin < Formula
  desc "Write your Dangerfiles in Kotlin"
  homepage "https://github.com/danger/kotlin"
  version "1.3.1"
  url "https://github.com/danger/kotlin/releases/download/#{version}/danger-kotlin-macosArm64.tar"
  sha256 "a32118075eeea193f357d865add34d26ba51689fc215ffed877a5e0260d80951"
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