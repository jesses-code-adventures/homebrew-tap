class Excavator < Formula
  desc "Tui application for managing and re-exporting audio samples"
  homepage "https://github.com/jesses-code-adventures/excavator"
  url "https://github.com/jesses-code-adventures/excavator/archive/refs/tags/v0.0.17-lw.tar.gz"
  sha256 "4514915ed7df06162bbb5b25aafbfd4253f585620467a3d28e1cdf266f23a4c2"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/excavator", "--version"
  end
end
