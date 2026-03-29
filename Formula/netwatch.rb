class Netwatch < Formula
  desc "Real-time network diagnostics TUI — like htop for your network"
  homepage "https://github.com/matthart1983/netwatch"
  url "https://github.com/matthart1983/netwatch/archive/refs/tags/v0.8.0.tar.gz"
  sha256 "186d634729d925bdcae8ded9eb1ac698f17d78ee870a10456dc470f8e4df7759"
  license "MIT"
  head "https://github.com/matthart1983/netwatch.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
