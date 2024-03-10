class Excavator < Formula
  desc "Tui application for managing and re-exporting audio samples"
  homepage "https://github.com/jesses-code-adventures/excavator"
  url "https://github.com/jesses-code-adventures/excavator/archive/refs/tags/v0.0.48-lw.tar.gz"
  sha256 "59a82f0e8eb2efc282603cc3c98896cff85fe44cb98987b3578d9150c3c5ecff"
  license "MIT"


  test do
    system "#{bin}/excavator", "--version"
  end
end
