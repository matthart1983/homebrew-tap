class Diskwatch < Formula
  desc "Single-host disk diagnostics TUI — sibling to netwatch and syswatch"
  homepage "https://github.com/matthart1983/diskwatch"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.6.1/diskwatch-macos-aarch64.tar.gz"
      sha256 "020b31d9f8076f3d9de7d49a44dee91176b213ea8d30ca7e298b8f8124c9cf1f"

      def install
        bin.install "diskwatch-macos-aarch64" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.6.1/diskwatch-macos-x86_64.tar.gz"
      sha256 "de21bf2b444e433b6ef9a3468f9b1e100366a5b465bb528bdf2e352300429503"

      def install
        bin.install "diskwatch-macos-x86_64" => "diskwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.6.1/diskwatch-linux-aarch64-static.tar.gz"
      sha256 "28d941a45fba4d4c43bcc352fdfd6bd06235b20235b4f2eba693c485dbe40be7"

      def install
        bin.install "diskwatch-linux-aarch64-static" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.6.1/diskwatch-linux-x86_64-static.tar.gz"
      sha256 "f1b7d029148c5c554bbf15ca7b0001eeb50ef83ef482ef52500a4f1fb4ebaa2c"

      def install
        bin.install "diskwatch-linux-x86_64-static" => "diskwatch"
      end
    end
  end

  test do
    assert_match "diskwatch", shell_output("#{bin}/diskwatch --help 2>&1", 1)
  end
end
