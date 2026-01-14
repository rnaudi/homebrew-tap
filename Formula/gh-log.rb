class GhLog < Formula
  desc "GitHub log viewer CLI"
  homepage "https://github.com/rnaudi/gh-log"
  version "0.1.17"
  
  on_macos do
    url "https://github.com/rnaudi/gh-log/releases/download/v0.1.17/gh-log-aarch64-apple-darwin.tar.gz"
    sha256 "6ebfa3b9e42ca07c8bbef56340d00c507ea851711af9d68460225de309c1c8d0"
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

