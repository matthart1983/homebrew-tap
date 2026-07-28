class Diskwatch < Formula
  desc "Single-host disk diagnostics TUI — sibling to netwatch and syswatch"
  homepage "https://github.com/matthart1983/diskwatch"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.1.6/diskwatch-macos-aarch64.tar.gz"
      sha256 "539bc79325fa6dc437dd6f04693a4e771f8a1e9f57ac713866b7eb94542ef37b"

      def install
        bin.install "diskwatch-macos-aarch64" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.1.6/diskwatch-macos-x86_64.tar.gz"
      sha256 "c346246954e93e923ae9d30bd56b3d644857b5a24f4cf45cdddebb54ce5bc035"

      def install
        bin.install "diskwatch-macos-x86_64" => "diskwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.1.6/diskwatch-linux-aarch64-static.tar.gz"
      sha256 "179efec48a61f0d0ef95fc4f7b1aacbe977b2d5e6ea0ac2e7f3166032652713a"

      def install
        bin.install "diskwatch-linux-aarch64-static" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.1.6/diskwatch-linux-x86_64-static.tar.gz"
      sha256 "eadc3ef0dc3398a1254ea3a342f6034cdff8f2c7962578fe731870688e6a0926"

      def install
        bin.install "diskwatch-linux-x86_64-static" => "diskwatch"
      end
    end
  end

  test do
    assert_match "diskwatch", shell_output("#{bin}/diskwatch --help 2>&1", 1)
  end
end
