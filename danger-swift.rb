class SourceDocs < Formula
  desc "Write your Dangerfiles in Swift"
  homepage "https://github.com/danger/danger-swift"
  version "0.1.0"
  url "https://github.com/danger/danger-swift/archive/#{version}.tar.gz"
  sha256 "a9538c7d25ce1a58a01c0562a9902257e53e4bb396a2ab33ee69fb29e76845c4"
  head "https://github.com/eneko/SourceDocs.git"

  depends_on :xcode

  # def install
  #   system "make", "install", "PREFIX=#{prefix}"
  # end
  def install
    build_path = "#{buildpath}/.build/release/sourcedocs"
    ohai "Building SourceDocs"
    system("swift --disable-sandbox build -c release -Xswiftc -static-stdlib")
    bin.install build_path
  end
end
