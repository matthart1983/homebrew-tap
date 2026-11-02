class Diskwatch < Formula
  desc "Single-host disk diagnostics TUI — sibling to netwatch and syswatch"
  homepage "https://github.com/matthart1983/diskwatch"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.7.1/diskwatch-macos-aarch64.tar.gz"
      sha256 "0975a1b879b60a9d72ac3029ab4b165a1fde0fdbe1826b56a367d1967213b56e"

      def install
        bin.install "diskwatch-macos-aarch64" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.7.1/diskwatch-macos-x86_64.tar.gz"
      sha256 "3ec52ff18d03c04a4438bd3a6bb287811618098c7e573f81013c52de696e9527"

      def install
        bin.install "diskwatch-macos-x86_64" => "diskwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.7.1/diskwatch-linux-aarch64-static.tar.gz"
      sha256 "1de2323d3c31484037d1f660c328430ee7d54cfdab14f6d9ce9dd311d1d9346b"

      def install
        bin.install "diskwatch-linux-aarch64-static" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.7.1/diskwatch-linux-x86_64-static.tar.gz"
      sha256 "439da7e7bed09f2e8e950ea48eea9be232d38c8e1c1c75fdb63a9d5c2bb8ddc7"

      def install
        bin.install "diskwatch-linux-x86_64-static" => "diskwatch"
      end
    end
  end

  test do
    assert_match "diskwatch", shell_output("#{bin}/diskwatch --help 2>&1", 1)
  end
end
