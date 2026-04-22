class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.13.0/netwatch-macos-aarch64.tar.gz"
      sha256 "94f2057fe8a0dba8053e503b61681773bbe5ab465f3dfa0b7f7019dcdfc2a304"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.13.0/netwatch-macos-x86_64.tar.gz"
      sha256 "b53caf5de505c724c2bf713d2b36f1791e8ad9cdbece4d2316295edc28800317"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.13.0/netwatch-linux-aarch64-static.tar.gz"
      sha256 "b4a4d68953019f7f8a50e422b3972b8bcf41ad1ecdfb25be8e2b26c85934f2a0"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.13.0/netwatch-linux-x86_64-static.tar.gz"
      sha256 "8a32993875836d34f7375f8ecb20da7c99bbedecba3f84ec5196ef6185792a00"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
