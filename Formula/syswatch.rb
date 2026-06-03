class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.1/syswatch-macos-aarch64.tar.gz"
      sha256 "f5846efbdb483eacd1a372c4fe2a957e8dcc62f32dc124042ccac61b1c911911"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.1/syswatch-macos-x86_64.tar.gz"
      sha256 "4e052ee908ce47b6c32a9bc3f95b38adae0bb3a08e71a5dc1c5da8c721831f61"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.1/syswatch-linux-aarch64-static.tar.gz"
      sha256 "f8abdd14412181e02c470fb8a73a72a922143c09bdcb4fbebb55bb58517fe5db"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.1/syswatch-linux-x86_64-static.tar.gz"
      sha256 "29f1787b5eea49a5e7a168510a0682553eb6094f480706ee5efcb44c3c45415f"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
