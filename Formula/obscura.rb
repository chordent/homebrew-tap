class Obscura < Formula
  desc "Headless browser for AI agents and web scraping"
  homepage "https://github.com/h4ckf0r0day/obscura"
  url "https://github.com/h4ckf0r0day/obscura/releases/download/v0.2.7/obscura-aarch64-macos-stealth.tar.gz"
  sha256 "3b05ebcd4755a325be224992fad6a038d86f7e5ab483e4c781f14de06cab973f"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "obscura", "obscura-worker"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/obscura --version")
  end
end
