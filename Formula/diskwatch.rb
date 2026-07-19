class Diskwatch < Formula
  desc "Single-host disk diagnostics TUI — sibling to netwatch and syswatch"
  homepage "https://github.com/matthart1983/diskwatch"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.1.3/diskwatch-macos-aarch64.tar.gz"
      sha256 "835a23faf43c738c018e867d06ddbb6bae57b36790330c2a7a6b73ebbc81e7ae"

      def install
        bin.install "diskwatch-macos-aarch64" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.1.3/diskwatch-macos-x86_64.tar.gz"
      sha256 "18c4f303e96e9328c239217327340888a5782f4885533f8a6948a94d24b1fb88"

      def install
        bin.install "diskwatch-macos-x86_64" => "diskwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.1.3/diskwatch-linux-aarch64-static.tar.gz"
      sha256 "80dec934a152435ba77399af68805346eb0277c6b7378d3eff6d22cad3eca15c"

      def install
        bin.install "diskwatch-linux-aarch64-static" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.1.3/diskwatch-linux-x86_64-static.tar.gz"
      sha256 "92f0ee0daf819cc86e703a1b4b938621102f5c0a8ee609f65e6bfcf66b5df435"

      def install
        bin.install "diskwatch-linux-x86_64-static" => "diskwatch"
      end
    end
  end

  test do
    assert_match "diskwatch", shell_output("#{bin}/diskwatch --help 2>&1", 1)
  end
end
