class DangerKotlinIntel < Formula
  desc "Write your Dangerfiles in Kotlin"
  homepage "https://github.com/danger/kotlin"
  version "1.3.1"
  url "https://github.com/danger/kotlin/releases/download/#{version}/danger-kotlin-macosX64.tar"
  sha256 "63f015453eaabd4792cbe26582844e9b43721fbbf5ffd66af8e807c79173f460"
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