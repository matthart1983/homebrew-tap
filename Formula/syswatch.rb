class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.6.0/syswatch-macos-aarch64.tar.gz"
      sha256 "1e37ce7d49874da44e32e8a391c61e9b562ac35346f1300cd9e24736428dd911"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.6.0/syswatch-macos-x86_64.tar.gz"
      sha256 "41107f427cf9a2138ec3b063e01d7f494c46e1dd76456f190358f2d3c21d3cc0"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.6.0/syswatch-linux-aarch64-static.tar.gz"
      sha256 "8e6917dfe04ef39a97232dc7d9b5fa50856e46096ff47953a66e1bb1e81a51c8"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.6.0/syswatch-linux-x86_64-static.tar.gz"
      sha256 "cd0acef871edf72f7b2fcd4b377192035276396c44d9393f0cdc7524b7eff7dc"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
