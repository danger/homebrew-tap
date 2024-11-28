class DangerKotlin < Formula
  desc "Write your Dangerfiles in Kotlin"
  homepage "https://github.com/danger/kotlin"
  version "1.3.2"
  url "https://github.com/danger/kotlin/releases/download/#{version}/danger-kotlin-macosArm64.tar"
  sha256 "425b39aae4802580b72bd4592cc3ab2deb9fb79bf427417a0c4e579f1cebaec9"
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
