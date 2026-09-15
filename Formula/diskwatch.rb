class Diskwatch < Formula
  desc "Single-host disk diagnostics TUI — sibling to netwatch and syswatch"
  homepage "https://github.com/matthart1983/diskwatch"
  version "0.5.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.8/diskwatch-macos-aarch64.tar.gz"
      sha256 "f13ba19183735c6e83d2d9ebcba3ce71984dd09927e3a1738805a827343ed4e7"

      def install
        bin.install "diskwatch-macos-aarch64" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.8/diskwatch-macos-x86_64.tar.gz"
      sha256 "2f1886d6334ce4f5d1a5fbb0101f256979050df73d7f4245adb3484be297744b"

      def install
        bin.install "diskwatch-macos-x86_64" => "diskwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.8/diskwatch-linux-aarch64-static.tar.gz"
      sha256 "53f0f5ba18f7b8ebff85bcfb8d022a7416a6b3b3c89a261dea6ace523a96eb7b"

      def install
        bin.install "diskwatch-linux-aarch64-static" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.8/diskwatch-linux-x86_64-static.tar.gz"
      sha256 "8b1eafa369c015b3f50f3efc2bdc1ae78b026c621600ca9772ed006e4555a2ba"

      def install
        bin.install "diskwatch-linux-x86_64-static" => "diskwatch"
      end
    end
  end

  test do
    assert_match "diskwatch", shell_output("#{bin}/diskwatch --help 2>&1", 1)
  end
end
