class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/11.0.5/danger-macos.zip"
  sha256 "456d21b80cd38f777854597bd98b6c2f7f37343b5d932f9fa066d8e778816ad2"

  def install
    bin.install "danger"
  end
end
