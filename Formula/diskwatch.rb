class Diskwatch < Formula
  desc "Single-host disk diagnostics TUI — sibling to netwatch and syswatch"
  homepage "https://github.com/matthart1983/diskwatch"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.3.1/diskwatch-macos-aarch64.tar.gz"
      sha256 "278490dbf3919bf3dbc03e7084b9c2b90ed7b4d90002d1cd06590fe35f5ff5f1"

      def install
        bin.install "diskwatch-macos-aarch64" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.3.1/diskwatch-macos-x86_64.tar.gz"
      sha256 "e176032ff446f9ddf53a2555ab1374c40f6c0644e51693ebadc468ee551c09c5"

      def install
        bin.install "diskwatch-macos-x86_64" => "diskwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.3.1/diskwatch-linux-aarch64-static.tar.gz"
      sha256 "8d45eefc34194931f7623b472bb824842214d045053487f8624c66de7d2e0c32"

      def install
        bin.install "diskwatch-linux-aarch64-static" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.3.1/diskwatch-linux-x86_64-static.tar.gz"
      sha256 "3f3f7973984b832f49bb0cc1e049a9904dcc4beeec03a960bfc346ed83f42add"

      def install
        bin.install "diskwatch-linux-x86_64-static" => "diskwatch"
      end
    end
  end

  test do
    assert_match "diskwatch", shell_output("#{bin}/diskwatch --help 2>&1", 1)
  end
end
