class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.7.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.5/syswatch-macos-aarch64.tar.gz"
      sha256 "69539da953ea290da46b221079b21f803c1fdc82850dc23e1f568da72b77ed2f"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.5/syswatch-macos-x86_64.tar.gz"
      sha256 "6bc4d229e196c16a5b1d2c59e690467205f1a91c284a8875b6761c1acf2dd03c"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.5/syswatch-linux-aarch64-static.tar.gz"
      sha256 "6c6197be431a6465e29d4e8c769187bb4e3a1bf2e15f2df403cf37ee6dc27845"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.5/syswatch-linux-x86_64-static.tar.gz"
      sha256 "6ab42edc7127f1724f6eecbe78abbf2334dd70b8b960bb16d380b1d3145e3d4d"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
