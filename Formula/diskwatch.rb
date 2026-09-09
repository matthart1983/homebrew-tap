class Diskwatch < Formula
  desc "Single-host disk diagnostics TUI — sibling to netwatch and syswatch"
  homepage "https://github.com/matthart1983/diskwatch"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.1/diskwatch-macos-aarch64.tar.gz"
      sha256 "3c714ca9adad3e3fd65ee1a8e80c805ad32d18484c9ceffc206a686d7e4e3463"

      def install
        bin.install "diskwatch-macos-aarch64" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.1/diskwatch-macos-x86_64.tar.gz"
      sha256 "975b2d293c96a487b94758fe7d4f3b433504d94075a206d046e61c45bc91eb1b"

      def install
        bin.install "diskwatch-macos-x86_64" => "diskwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.1/diskwatch-linux-aarch64-static.tar.gz"
      sha256 "25ca3de377e8c88469afd204632a662985246e32b3f0b263d5350b1875328d63"

      def install
        bin.install "diskwatch-linux-aarch64-static" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.1/diskwatch-linux-x86_64-static.tar.gz"
      sha256 "c784b679083e7491d06c33653d6d45231ed92c538e1dc27b6939783a3df0e02f"

      def install
        bin.install "diskwatch-linux-x86_64-static" => "diskwatch"
      end
    end
  end

  test do
    assert_match "diskwatch", shell_output("#{bin}/diskwatch --help 2>&1", 1)
  end
end
