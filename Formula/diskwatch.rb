class Diskwatch < Formula
  desc "Single-host disk diagnostics TUI — sibling to netwatch and syswatch"
  homepage "https://github.com/matthart1983/diskwatch"
  version "0.5.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.5/diskwatch-macos-aarch64.tar.gz"
      sha256 "d37833bd834257440c231d3901a33356d673e501b8f3a65589c38f5f91f8c045"

      def install
        bin.install "diskwatch-macos-aarch64" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.5/diskwatch-macos-x86_64.tar.gz"
      sha256 "3cd13f43378210f27d0d2f9d1ad0c8189f2fecd4bda586c95dafb8a3adbfe962"

      def install
        bin.install "diskwatch-macos-x86_64" => "diskwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.5/diskwatch-linux-aarch64-static.tar.gz"
      sha256 "35cffc334aa6009dd600caede672868f2eed6dc6f3f0a33e0cd2a26678729402"

      def install
        bin.install "diskwatch-linux-aarch64-static" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.5/diskwatch-linux-x86_64-static.tar.gz"
      sha256 "96253aa702bf552013e42cdac4661054d5c56f55c926403214a75d00524672dd"

      def install
        bin.install "diskwatch-linux-x86_64-static" => "diskwatch"
      end
    end
  end

  test do
    assert_match "diskwatch", shell_output("#{bin}/diskwatch --help 2>&1", 1)
  end
end
