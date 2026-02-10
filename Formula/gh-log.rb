class GhLog < Formula
  desc "GitHub log viewer CLI"
  homepage "https://github.com/rnaudi/gh-log"
  version "0.1.23"
  
  on_macos do
    url "https://github.com/rnaudi/gh-log/releases/download/v0.1.23/gh-log-aarch64-apple-darwin.tar.gz"
    sha256 "d4fb5f732fb94d2960a71210999f4c490ae469f94567f3d4a7df55fc05f0e00e"
  end

  on_linux do
    url "https://github.com/rnaudi/gh-log/releases/download/v0.1.5/gh-log-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "caa53698502c94a3d0da7df35c8403f9d6c6eb32e442787d0bd6aef48518bf14"
  end

  def install
    bin.install "gh-log"
  end

  test do
    system "#{bin}/gh-log", "--version"
  end
end

