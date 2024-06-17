class ApplePhotosExport < Formula
  desc "Command-line tool to export photos from the macOS Photos library"
  homepage "https://github.com/haukesomm/apple-photos-export"
  url "https://github.com/haukesomm/apple-photos-export/archive/refs/tags/release-0.2.0.tar.gz"
  sha256 "64e46f869338fdebfad42334881467e25e43a44621a854a7927bb680d18abe2b"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    output = shell_output("#{bin}/apple-photos-export --version")
    assert_match "apple-photos-export 0.2.0", output
  end
end
