class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.1.0/syswatch-macos-aarch64.tar.gz"
      sha256 "73d570bce2a40fc42a03a44a71c1e258de6353dabfd9455e90454754fbf52d79"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.1.0/syswatch-macos-x86_64.tar.gz"
      sha256 "2a9fbf9ae38efcf35db591c6bd9c0c9ec9e4891ebd82592c8cf1d18383e5e35d"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.1.0/syswatch-linux-aarch64-static.tar.gz"
      sha256 "a2f657593c83a0e35607fe7f6af6af34fd3c0ee2de9c7ac48cc004ccc1a6fa49"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.1.0/syswatch-linux-x86_64-static.tar.gz"
      sha256 "963d38a4b85bd931563a0d61f7b51547ffd4be5874acf2a37b1ffba8c90fb958"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
