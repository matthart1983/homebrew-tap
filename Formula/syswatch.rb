class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.5.0/syswatch-macos-aarch64.tar.gz"
      sha256 "2f8974f9de9b5ea13db5e703fa3c5008b4ae81babbb0d71e0b4cbde2158490f9"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.5.0/syswatch-macos-x86_64.tar.gz"
      sha256 "7396f62879cd754ba82a143d37b7c66432e5b7c6eebc13a5c904e0a38a7e36d9"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.5.0/syswatch-linux-aarch64-static.tar.gz"
      sha256 "d21e758eb73a305869be91266ed6eed9c9323f70fc565338feef5ca5ad7f4c0a"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.5.0/syswatch-linux-x86_64-static.tar.gz"
      sha256 "0835329dbc909991582354c9022523c49742f5b8f189796db95dddfe43c8c869"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
