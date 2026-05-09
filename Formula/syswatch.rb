class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.4.1/syswatch-macos-aarch64.tar.gz"
      sha256 "1c4379d3d2c71b880f7c771c95ea8956a5f815a9df4d4124bc3e7e7a098d8cf6"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.4.1/syswatch-macos-x86_64.tar.gz"
      sha256 "2c33b2d6027049dfafe3885b7c0e744bfbc55629f1d64f30c721d48cdac921b4"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.4.1/syswatch-linux-aarch64-static.tar.gz"
      sha256 "45f3f9fd99d0f8544166e8512354baa5ec9d0402a386dcc09a44e62d96820d30"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.4.1/syswatch-linux-x86_64-static.tar.gz"
      sha256 "ad53d90162e35a8979f3ad9b0faa0e3e8fdbe0e1b77f1a94f8e2823e76c623ce"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
