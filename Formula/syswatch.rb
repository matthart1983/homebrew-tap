class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.13.0/syswatch-macos-aarch64.tar.gz"
      sha256 "0155099ba7724a0e09eccd372b5d350f900c800f5a49bf3862781725f4d49f77"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.13.0/syswatch-macos-x86_64.tar.gz"
      sha256 "fb5e17241adbb2a9db45c532bb277ba4f7a86a3edd746e9bb7691549acb52c1f"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.13.0/syswatch-linux-aarch64-static.tar.gz"
      sha256 "2410401475c9f3948bf0956c0dc7153a5c9d1fddd095920b8fb873cd5d5961ca"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.13.0/syswatch-linux-x86_64-static.tar.gz"
      sha256 "cfe7a9e4478e8fb45da6d84b462e6528363bcc5511f5eb807e386aab2c398370"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
