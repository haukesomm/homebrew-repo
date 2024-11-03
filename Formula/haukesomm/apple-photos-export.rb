class ApplePhotosExport < Formula
  desc "Command-line tool to export photos from the macOS Photos library"
  homepage "https://github.com/haukesomm/apple-photos-export"
  url "https://github.com/haukesomm/apple-photos-export/archive/refs/tags/release-0.4.1.tar.gz"
  sha256 "1bd5db102abc2cd7949fd1d8df02f061e5f93c9729312b7da430d6d155cc2f7c"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    output = shell_output("#{bin}/apple-photos-export --version")
    assert_match "apple-photos-export 0.4.1", output
  end
end
