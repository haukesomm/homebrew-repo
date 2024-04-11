class ApplePhotosExport < Formula
  desc "Command-line tool to export photos from the macOS Photos library"
  homepage "https://github.com/haukesomm/apple-photos-export"
  url "https://github.com/haukesomm/apple-photos-export/archive/refs/tags/release-0.1.0.tar.gz"
  sha256 "5fb3e8dda13faa4b80b7dd9ab2500b23677a4a24eb1b27290221c6407bad4dd5"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    output = shell_output("#{bin}/apple-photos-export --version")
    assert_match "apple-photos-export 0.1.0", output
  end
end
