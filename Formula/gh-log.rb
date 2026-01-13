class GhLog < Formula
  desc "GitHub log viewer CLI"
  homepage "https://github.com/rnaudi/gh-log"
  version "0.1.13"
  
  on_macos do
    url "https://github.com/rnaudi/gh-log/releases/download/v0.1.13/gh-log-aarch64-apple-darwin.tar.gz"
    sha256 "57574609bc94eefa30ecd52b32c537b2199bff1c5baf7e81579dedab94b9481f"
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

