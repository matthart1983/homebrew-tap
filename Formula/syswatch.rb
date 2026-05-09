class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.4.2/syswatch-macos-aarch64.tar.gz"
      sha256 "681035e01d8455dc0680586c84630a0053365aafb2e3a0b1e9d7b0110e37fe6c"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.4.2/syswatch-macos-x86_64.tar.gz"
      sha256 "76e8b52678bcb5b3b4442f1c0b29a34c4fd59f5343129d0f54205bdfa015114c"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.4.2/syswatch-linux-aarch64-static.tar.gz"
      sha256 "43cf47747d0e7eb7701de08d9447a87618f085b27a3f5fcc0e89839db1d21d19"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.4.2/syswatch-linux-x86_64-static.tar.gz"
      sha256 "66f3112c0bab9270fb8c93ce0a9a75bde43fce2603f6fc2a75ff97ba3bdd1a6a"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
