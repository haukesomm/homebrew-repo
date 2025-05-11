class Bunbun < Formula
  desc "Simple and adorable sysinfo utility written in Rust"
  homepage "https://github.com/devraza/bunbun"
  url "https://github.com/devraza/bunbun/archive/refs/tags/v1.5.0.tar.gz"
  sha256 "dff37adede7fb821339eddb1d455f25dcb0d1bfa51527a446c47d88f253a878d"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    output = shell_output("#{bin}/bunbun --version")
    assert_match "bunbun 1.5.0", output
  end
end
