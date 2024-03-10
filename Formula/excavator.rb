class Excavator < Formula
  desc "Tui application for managing and re-exporting audio samples"
  homepage "https://github.com/jesses-code-adventures/excavator"
  url "https://github.com/jesses-code-adventures/excavator/archive/refs/tags/0.0.50-lw.tar.gz"
  sha256 "5b9ec39dd372e380da85309312076128dc246ebb794681643235aeddf2b87b8b"
  license "MIT"

  test do
    system "#{bin}/excavator", "--version"
  end
end
