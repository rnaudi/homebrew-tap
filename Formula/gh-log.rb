class GhLog < Formula
  desc "GitHub log viewer CLI"
  homepage "https://github.com/rnaudi/gh-log"
  version "0.1.5"
  
  on_macos do
    url "https://github.com/rnaudi/gh-log/releases/download/v0.1.5/gh-log-aarch64-apple-darwin.tar.gz"
    sha256 "PUT_SHA256_HERE"
  end

  on_linux do
    url "https://github.com/rnaudi/gh-log/releases/download/v0.1.5/gh-log-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "PUT_SHA256_HERE"
  end

  def install
    bin.install "gh-log"
  end

  test do
    system "#{bin}/gh-log", "--version"
  end
end

