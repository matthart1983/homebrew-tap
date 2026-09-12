class Diskwatch < Formula
  desc "Single-host disk diagnostics TUI — sibling to netwatch and syswatch"
  homepage "https://github.com/matthart1983/diskwatch"
  version "0.5.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.4/diskwatch-macos-aarch64.tar.gz"
      sha256 "000396bfe560e0ced687d13d14c4ca099ae4ed09005b995276b6e953d5919258"

      def install
        bin.install "diskwatch-macos-aarch64" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.4/diskwatch-macos-x86_64.tar.gz"
      sha256 "25357d0f40f2eb361f02d5b7216a7941b4bb5cb90306948b7927c2087ad9e48c"

      def install
        bin.install "diskwatch-macos-x86_64" => "diskwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.4/diskwatch-linux-aarch64-static.tar.gz"
      sha256 "b0b9c9a55332474d06c7d86d6458d2afcc0b05b95e86614bcb0e71879e9d279a"

      def install
        bin.install "diskwatch-linux-aarch64-static" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.4/diskwatch-linux-x86_64-static.tar.gz"
      sha256 "e1a7bcbed87ada99df26e94235768244158c12879af4e59b6a685ff861222593"

      def install
        bin.install "diskwatch-linux-x86_64-static" => "diskwatch"
      end
    end
  end

  test do
    assert_match "diskwatch", shell_output("#{bin}/diskwatch --help 2>&1", 1)
  end
end
