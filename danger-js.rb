class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/11.0.2/danger-macos.zip"
  sha256 "eb3dd090f2f07fbe96766f90f42d30b005e3835c3b485013e2fcbb1ca1ccb454"

  def install
    bin.install "danger"
  end
end
