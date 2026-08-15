class Diskwatch < Formula
  desc "Single-host disk diagnostics TUI — sibling to netwatch and syswatch"
  homepage "https://github.com/matthart1983/diskwatch"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.2.0/diskwatch-macos-aarch64.tar.gz"
      sha256 "dbdfceee8bab22104a631f73d7cd15b217c2af7359765cd96ed51a06f15686c5"

      def install
        bin.install "diskwatch-macos-aarch64" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.2.0/diskwatch-macos-x86_64.tar.gz"
      sha256 "f3d4baa6b3831bd093f999be0603a03b0465d4fa4dbfea651c9d4b26d56c5eb6"

      def install
        bin.install "diskwatch-macos-x86_64" => "diskwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.2.0/diskwatch-linux-aarch64-static.tar.gz"
      sha256 "16f4f2c2ee05ef35ca6fd33e808dc8dab96801019209c6e617820b9cfd123100"

      def install
        bin.install "diskwatch-linux-aarch64-static" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.2.0/diskwatch-linux-x86_64-static.tar.gz"
      sha256 "14ea1d932d4f25ab6e53ce95cdbdcdad0f1888446cc6d881368ad105ab8439df"

      def install
        bin.install "diskwatch-linux-x86_64-static" => "diskwatch"
      end
    end
  end

  test do
    assert_match "diskwatch", shell_output("#{bin}/diskwatch --help 2>&1", 1)
  end
end
