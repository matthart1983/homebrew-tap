class Diskwatch < Formula
  desc "Single-host disk diagnostics TUI — sibling to netwatch and syswatch"
  homepage "https://github.com/matthart1983/diskwatch"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.3/diskwatch-macos-aarch64.tar.gz"
      sha256 "988825b75ef7f740207b12f9d21adff5d266f71bc55270cfbc7cbf0852d2b117"

      def install
        bin.install "diskwatch-macos-aarch64" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.3/diskwatch-macos-x86_64.tar.gz"
      sha256 "aa103ecb5b46413999aef00e0bc75f063b0d4bdc28433a38687c6e66af9ca5f0"

      def install
        bin.install "diskwatch-macos-x86_64" => "diskwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.3/diskwatch-linux-aarch64-static.tar.gz"
      sha256 "be7fc9a5b71d12b2eba13481acd009b23a6a369f03ad1a1afe2d5761211138f9"

      def install
        bin.install "diskwatch-linux-aarch64-static" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.3/diskwatch-linux-x86_64-static.tar.gz"
      sha256 "3351443496ba5d8f8ba257d1c4da649fdee390f0acc18fbc294dcdef6e8cb75a"

      def install
        bin.install "diskwatch-linux-x86_64-static" => "diskwatch"
      end
    end
  end

  test do
    assert_match "diskwatch", shell_output("#{bin}/diskwatch --help 2>&1", 1)
  end
end
