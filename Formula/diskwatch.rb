class Diskwatch < Formula
  desc "Single-host disk diagnostics TUI — sibling to netwatch and syswatch"
  homepage "https://github.com/matthart1983/diskwatch"
  version "0.5.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.10/diskwatch-macos-aarch64.tar.gz"
      sha256 "21b229d122fa3b788fa447f9693ba51fc9a4927c4c9876f6cea557754ac561aa"

      def install
        bin.install "diskwatch-macos-aarch64" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.10/diskwatch-macos-x86_64.tar.gz"
      sha256 "1cb2bad79f07c1f5ca69e4ad883f5f193926ac7e9c8d8aae66350d5663bf66a3"

      def install
        bin.install "diskwatch-macos-x86_64" => "diskwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.10/diskwatch-linux-aarch64-static.tar.gz"
      sha256 "ba9649df11375f27c56d1fa23398e1c148eeb2c97f8ecfd9f0355f350b533dc9"

      def install
        bin.install "diskwatch-linux-aarch64-static" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.10/diskwatch-linux-x86_64-static.tar.gz"
      sha256 "fdc94decab92077ccbd72412b85d2692fcfb95c4de16ab77b07c868cd2d84049"

      def install
        bin.install "diskwatch-linux-x86_64-static" => "diskwatch"
      end
    end
  end

  test do
    assert_match "diskwatch", shell_output("#{bin}/diskwatch --help 2>&1", 1)
  end
end
