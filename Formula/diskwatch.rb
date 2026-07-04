class Diskwatch < Formula
  desc "Single-host disk diagnostics TUI — sibling to netwatch and syswatch"
  homepage "https://github.com/matthart1983/diskwatch"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.1.2/diskwatch-macos-aarch64.tar.gz"
      sha256 "fe8ca9081d986025d719d08a04d7aab19a75e9b4ca49b64dbc413c4a789878d7"

      def install
        bin.install "diskwatch-macos-aarch64" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.1.2/diskwatch-macos-x86_64.tar.gz"
      sha256 "60ce087b7b4179409d051e8558b0e59726acfa34f63ac056b48d99f4605dd47f"

      def install
        bin.install "diskwatch-macos-x86_64" => "diskwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.1.2/diskwatch-linux-aarch64-static.tar.gz"
      sha256 "23a937a9e1bad7eff3e58d15fb9f1550decfe44cc5590a65607c5c9e892a9e5a"

      def install
        bin.install "diskwatch-linux-aarch64-static" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.1.2/diskwatch-linux-x86_64-static.tar.gz"
      sha256 "dcdd35b8840597d4cf6ff7ec19579917a037c571ae5aeb79176dea0c79813f3a"

      def install
        bin.install "diskwatch-linux-x86_64-static" => "diskwatch"
      end
    end
  end

  test do
    assert_match "diskwatch", shell_output("#{bin}/diskwatch --help 2>&1", 1)
  end
end
