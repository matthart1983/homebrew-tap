class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.14.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.14.3/syswatch-macos-aarch64.tar.gz"
      sha256 "7e7047c7f189da56b817273a0551ecd1a97564358dd2ee5c193aad97a6029ed6"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.14.3/syswatch-macos-x86_64.tar.gz"
      sha256 "0f902b86e4e695d3f9bd598a2d7c6b8bce29bf35345f70bf284bafd5c41a06bd"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.14.3/syswatch-linux-aarch64-static.tar.gz"
      sha256 "6b4139065461849db5f9313db6f2a08596c42d9b84a4bb6d32e57aed170eae84"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.14.3/syswatch-linux-x86_64-static.tar.gz"
      sha256 "05f0fe42f173f80756a2515c33583ee4f8778902de1516a5bb3c8a179db1c327"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
