class Excavator < Formula
  desc "Tui application for managing and re-exporting audio samples"
  homepage "https://github.com/jesses-code-adventures/excavator"
  url "https://github.com/jesses-code-adventures/excavator/archive/refs/tags/0.0.47-lw.tar.gz"
  sha256 "a27b18ed3347c7a31a82e139c35a3c2dfb01864d8b49752dea301d3d81e559d6"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/excavator", "--version"
  end
end
