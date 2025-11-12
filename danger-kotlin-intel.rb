class DangerKotlinIntel < Formula
  desc "Write your Dangerfiles in Kotlin"
  homepage "https://github.com/danger/kotlin"
  version "1.3.4"
  url "https://github.com/danger/kotlin/releases/download/#{version}/danger-kotlin-macosX64.tar"
  sha256 "b6cc3768b5750dccec337022789f55a0449738b4ac5de01232ba8360c7e10904"
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
