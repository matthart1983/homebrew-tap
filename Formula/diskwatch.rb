class Diskwatch < Formula
  desc "Single-host disk diagnostics TUI — sibling to netwatch and syswatch"
  homepage "https://github.com/matthart1983/diskwatch"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.7.0/diskwatch-macos-aarch64.tar.gz"
      sha256 "1a46e91e1fb8336db8470eb00bef7df64298c4136e34d7e7e3ccdad631d9ce67"

      def install
        bin.install "diskwatch-macos-aarch64" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.7.0/diskwatch-macos-x86_64.tar.gz"
      sha256 "cfd4b237ba371579c1d0ca771bb816a2f4ec9b1e28676a25d35b888ce9f8fe5a"

      def install
        bin.install "diskwatch-macos-x86_64" => "diskwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.7.0/diskwatch-linux-aarch64-static.tar.gz"
      sha256 "954ce9c7a225d8ed81ad6ca0743b9d038eed6051de5533211d856a766c38e380"

      def install
        bin.install "diskwatch-linux-aarch64-static" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.7.0/diskwatch-linux-x86_64-static.tar.gz"
      sha256 "b513c9859a5956059115f7873eadbc0370581466fda23acb4d330d995c0234cb"

      def install
        bin.install "diskwatch-linux-x86_64-static" => "diskwatch"
      end
    end
  end

  test do
    assert_match "diskwatch", shell_output("#{bin}/diskwatch --help 2>&1", 1)
  end
end
