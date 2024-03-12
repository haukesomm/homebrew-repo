class ApplePhotosExport < Formula
  desc "Command line tool to export photos from the macOS Photos library"
  homepage "https://github.com/haukesomm/apple-photos-export"
  url "https://github.com/haukesomm/apple-photos-export/archive/refs/tags/release-0.0.1.tar.gz"
  sha256 "c484246192cc1ff81b8b6fe92902e84e140454f6dd19213c585aafe465c4cab4"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    output = shell_output("#{bin}/apple-photos-export --version")
    assert_match "apple-photos-export 0.0.1", output
  end
end
