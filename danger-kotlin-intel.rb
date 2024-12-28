class DangerKotlinIntel < Formula
  desc "Write your Dangerfiles in Kotlin"
  homepage "https://github.com/danger/kotlin"
  version "1.3.3"
  url "https://github.com/danger/kotlin/releases/download/#{version}/danger-kotlin-macosX64.tar"
  sha256 "4e89aaf30e2861f86dcabfb7005629bf8f53b0926764c6320174e5e860a23373"
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
