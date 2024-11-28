class DangerKotlinIntel < Formula
  desc "Write your Dangerfiles in Kotlin"
  homepage "https://github.com/danger/kotlin"
  version "1.3.2"
  url "https://github.com/danger/kotlin/releases/download/#{version}/danger-kotlin-macosX64.tar"
  sha256 "9fbabb8df943c428aa06645ca7088c3231a1ca107d135c601a962ddbe43ddd0d"
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
