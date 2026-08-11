class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.8.0/syswatch-macos-aarch64.tar.gz"
      sha256 "cc02be68759bdafff0e97818c2a1ec05f9f49dbe90191c5f12ebefd36199fcb9"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.8.0/syswatch-macos-x86_64.tar.gz"
      sha256 "7e01d88e60de642b45023638d9bfae7a6819e09fbbfab36a521055c42d7fbfab"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.8.0/syswatch-linux-aarch64-static.tar.gz"
      sha256 "9b66d52b80f7d5953c7e2d741890307e4a1152b0b6aa1e6e4e3f8284ecbeca59"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.8.0/syswatch-linux-x86_64-static.tar.gz"
      sha256 "b6389661cccae5561ca2d45217e4795271e01016f55e5791483a95d56b77b67a"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
