class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.3.0/syswatch-macos-aarch64.tar.gz"
      sha256 "fcf85f9afcfdb7e9f00a6da67e92f4a65144aaaff2fcbb7f2a16684e64b53679"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.3.0/syswatch-macos-x86_64.tar.gz"
      sha256 "2afcc291933d597769d46d37811a2f16c7d40f3bf3bfcee7eceb716e4ea4eb8b"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.3.0/syswatch-linux-aarch64-static.tar.gz"
      sha256 "bafe06b9ef64218c4b44d56a3203a9830d341ec16bedb02e6729185c507d3aae"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.3.0/syswatch-linux-x86_64-static.tar.gz"
      sha256 "32f790034bdf212d1d7a44219fb6f6c88215e827517c572e55dabb1344f38885"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
