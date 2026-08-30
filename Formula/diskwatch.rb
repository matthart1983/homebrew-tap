class Diskwatch < Formula
  desc "Single-host disk diagnostics TUI — sibling to netwatch and syswatch"
  homepage "https://github.com/matthart1983/diskwatch"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.0/diskwatch-macos-aarch64.tar.gz"
      sha256 "d563209b3cf4338450f0cfcc5c7eebc28961b008d45c7b3c08e96283d69db7ce"

      def install
        bin.install "diskwatch-macos-aarch64" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.0/diskwatch-macos-x86_64.tar.gz"
      sha256 "2c1e4ab6e0c228a5ed8856cec7588544118d8b9ce0a98f945f1ec4f380ac8a19"

      def install
        bin.install "diskwatch-macos-x86_64" => "diskwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.0/diskwatch-linux-aarch64-static.tar.gz"
      sha256 "f439b304daf2755fd76e0cd89e6f28e1663d471ae0cade2be7353c245326001d"

      def install
        bin.install "diskwatch-linux-aarch64-static" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.0/diskwatch-linux-x86_64-static.tar.gz"
      sha256 "597f3a5c6c9f5fa030460b9b6228745fd9e21e35debe8949f5a3c1d78b434463"

      def install
        bin.install "diskwatch-linux-x86_64-static" => "diskwatch"
      end
    end
  end

  test do
    assert_match "diskwatch", shell_output("#{bin}/diskwatch --help 2>&1", 1)
  end
end
