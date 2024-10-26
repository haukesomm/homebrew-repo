class ApplePhotosExport < Formula
  desc "Command-line tool to export photos from the macOS Photos library"
  homepage "https://github.com/haukesomm/apple-photos-export"
  url "https://github.com/haukesomm/apple-photos-export/archive/refs/tags/release-0.4.0.tar.gz"
  sha256 "379ba21737f198b00f60fe9cb7cca1c0dd8804f8bffc486d018b094d258a8aa2"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    output = shell_output("#{bin}/apple-photos-export --version")
    assert_match "apple-photos-export 0.3.0", output
  end
end
