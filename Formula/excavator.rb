class Excavator < Formula
  desc "Tui application for managing and re-exporting audio samples"
  homepage "https://github.com/jesses-code-adventures/excavator"
  url "https://github.com/jesses-code-adventures/excavator/archive/refs/tags/0.0.51-lw.tar.gz"
  sha256 "28cb93bd32f68a1987270304b125e0c537a380799cf84ab060097c5cef16b45e"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/excavator", "--version"
  end
end
