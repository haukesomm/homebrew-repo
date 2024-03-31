class Bunbun < Formula
  desc "Simple and adorable sysinfo utility written in Rust"
  homepage "https://github.com/devraza/bunbun"
  url "https://github.com/devraza/bunbun/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "33a5a8c996322d26594b2a3195d67d07d7ea48e2dd35ac735d337ad83205be28"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    output = shell_output("#{bin}/bunbun --version")
    assert_match "bunbun 1.3.0", output
  end
end
