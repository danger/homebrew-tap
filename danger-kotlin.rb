class DangerKotlin < Formula
  desc "Write your Dangerfiles in Kotlin"
  homepage "https://github.com/danger/kotlin"
  version "1.3.4"
  url "https://github.com/danger/kotlin/releases/download/#{version}/danger-kotlin-macosArm64.tar"
  sha256 "a6b6531da7a4c8274e41f54a075e85b4f4bc16e0a930a2259d938f4cdc1a24ea"
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
