class ApplePhotosExport < Formula
  desc "Command-line tool to export photos from the macOS Photos library"
  homepage "https://github.com/haukesomm/apple-photos-export"
  url "https://github.com/haukesomm/apple-photos-export/archive/refs/tags/release-0.3.0.tar.gz"
  sha256 "98551e3bf159835b2f11c89cb1baacd783361e7223ee73c437b61c48f1fe61e5"
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
