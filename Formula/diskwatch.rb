class Diskwatch < Formula
  desc "Single-host disk diagnostics TUI — sibling to netwatch and syswatch"
  homepage "https://github.com/matthart1983/diskwatch"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.1.4/diskwatch-macos-aarch64.tar.gz"
      sha256 "62a78a2b4f87cc2e56b6f61415d4fe2b77d026d488d6d846757e79b65450f894"

      def install
        bin.install "diskwatch-macos-aarch64" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.1.4/diskwatch-macos-x86_64.tar.gz"
      sha256 "933088156c1c3bea93fec2758c23afbb4040b728e9784d7ede4b41e776bfedd5"

      def install
        bin.install "diskwatch-macos-x86_64" => "diskwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.1.4/diskwatch-linux-aarch64-static.tar.gz"
      sha256 "e762d81dd360eb497dbf1a1723a203fcebe6d121dbb318c742a75c75784af7ab"

      def install
        bin.install "diskwatch-linux-aarch64-static" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.1.4/diskwatch-linux-x86_64-static.tar.gz"
      sha256 "c0f2f96f6551290113877865b957b72c45bf119c4ad5676fe4d704f96b4d75db"

      def install
        bin.install "diskwatch-linux-x86_64-static" => "diskwatch"
      end
    end
  end

  test do
    assert_match "diskwatch", shell_output("#{bin}/diskwatch --help 2>&1", 1)
  end
end
