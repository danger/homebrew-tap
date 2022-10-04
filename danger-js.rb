class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"
  url "https://github.com/danger/danger-js/releases/download/11.1.4/danger-macos.zip"
  sha256 "ad42a8603dea80f33a236acc385206caefd8942aed08ae26428e0097bf072486"

  def install
    bin.install "danger"
  end
end
