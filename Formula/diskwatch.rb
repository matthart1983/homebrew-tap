class Diskwatch < Formula
  desc "Single-host disk diagnostics TUI — sibling to netwatch and syswatch"
  homepage "https://github.com/matthart1983/diskwatch"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.3.2/diskwatch-macos-aarch64.tar.gz"
      sha256 "c3d10df20bc10e433e12dfed1634a45428b10257fdba7e757ec8a8e8dbc8a1e9"

      def install
        bin.install "diskwatch-macos-aarch64" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.3.2/diskwatch-macos-x86_64.tar.gz"
      sha256 "8cd539cfdc86e7db3f11814f83ebd6d444a260e65725fdb74116d00c7d649701"

      def install
        bin.install "diskwatch-macos-x86_64" => "diskwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.3.2/diskwatch-linux-aarch64-static.tar.gz"
      sha256 "8b2ed0cff5d4571d72c4943d294d7892e95aefcf0156e7eb71101de17f06b983"

      def install
        bin.install "diskwatch-linux-aarch64-static" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.3.2/diskwatch-linux-x86_64-static.tar.gz"
      sha256 "d2b7e712a9538fe6173e7d99836775bc608ae3736bf1de95c7e2d92f04c0c7d0"

      def install
        bin.install "diskwatch-linux-x86_64-static" => "diskwatch"
      end
    end
  end

  test do
    assert_match "diskwatch", shell_output("#{bin}/diskwatch --help 2>&1", 1)
  end
end
