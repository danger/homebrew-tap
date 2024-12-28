class DangerKotlin < Formula
  desc "Write your Dangerfiles in Kotlin"
  homepage "https://github.com/danger/kotlin"
  version "1.3.3"
  url "https://github.com/danger/kotlin/releases/download/#{version}/danger-kotlin-macosArm64.tar"
  sha256 "51eb28c29b50d83ea0054675fa8d1c8670ce1249761166fdc373349142983f1b"
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
