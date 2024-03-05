class Excavator < Formula
  desc "Tui application for managing and re-exporting audio samples"
  homepage "https://github.com/jesses-code-adventures/excavator"
  url "https://github.com/jesses-code-adventures/excavator/archive/refs/tags/v0.0.18-lw.tar.gz"
  sha256 "105c429a51a7214af1c54b713ef2c6c9c0979c185f15472f461f3353dfbb4fa8"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/excavator", "--version"
  end
end
