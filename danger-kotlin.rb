class DangerKotlin < Formula
  desc "Write your Dangerfiles in Kotlin"
  homepage "https://github.com/danger/kotlin"
  version "1.3.0" 
  url "https://github.com/danger/kotlin/releases/download/#{version}/danger-kotlin-#{version}-macos-arm.zip"
  sha256 "1f010eda992f2d64cdac6397803d5a0db5cac1f6a0b93be9606d4de71f088b87"
  head "https://github.com/danger/kotlin.git"

  # Use the vendored danger
  depends_on "danger/tap/danger-js"
  depends_on "kotlin"
  
 def install
    libexec.install %w[bin lib]
    (bin/"danger-kotlin").write_env_script libexec/"bin/danger-kotlin", Language::Java.overridable_java_home_env
  end
end
