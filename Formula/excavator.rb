class Excavator < Formula
  desc "Tui application for managing and re-exporting audio samples"
  homepage "https://github.com/jesses-code-adventures/excavator"
  url "https://github.com/jesses-code-adventures/excavator/archive/refs/tags/0.0.52-lw.tar.gz"
  sha256 "20e1cfa4205ffebf3f079d2cbcfbf1dd7fa50fba617d366db51d24f876e47085"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/excavator", "--version"
  end
end
