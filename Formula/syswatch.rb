class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.6.1/syswatch-macos-aarch64.tar.gz"
      sha256 "d1d30c08265e1b596b7bc229d2ebbc977bb9b943c3f9a4a43c1f56c774dbd30a"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.6.1/syswatch-macos-x86_64.tar.gz"
      sha256 "c1ecab4030d76c737ca544a1f907cd30dc55e04d99b7c08375a875375295dd69"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.6.1/syswatch-linux-aarch64-static.tar.gz"
      sha256 "bd03a7f2c1ed480f65b9e645ffb4f6aba1b36cc5645446480820e6e1d0307833"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.6.1/syswatch-linux-x86_64-static.tar.gz"
      sha256 "ad403bf717d96a2fa5035464649ca13198eec294bcde647daf2b101b90f20ad2"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
