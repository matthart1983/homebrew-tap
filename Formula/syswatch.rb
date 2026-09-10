class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.11.0/syswatch-macos-aarch64.tar.gz"
      sha256 "d2a3aff9893dac5babe0e95a862c38e2afe9eed87bbf2f50507b68356a446f26"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.11.0/syswatch-macos-x86_64.tar.gz"
      sha256 "cb7475af5423210152764b53b836acb001cb559a44c953211b7b4dab5088ac7d"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.11.0/syswatch-linux-aarch64-static.tar.gz"
      sha256 "b8235b170ad1e6f207b81bc0d3e72bb5a7aaab52ce467b5f77b25dd19cbf7795"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.11.0/syswatch-linux-x86_64-static.tar.gz"
      sha256 "9957b780877041a17db50eea98ef8a510a0f0173eaf7d0c5e3a1c4c56db222d2"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
