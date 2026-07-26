class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.27.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.27.0/netwatch-macos-aarch64.tar.gz"
      sha256 "d26b5718145fac3a6d00d46079ba977ccdfed49aeb74435f22d958afc7df6720"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.27.0/netwatch-macos-x86_64.tar.gz"
      sha256 "2ecbfddae8b6e16cb4efa6569e89e7f06deb78bdea86dee4b0cde17f7bfcd621"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.27.0/netwatch-linux-aarch64-static.tar.gz"
      sha256 "9453ab1909bb51eb71a192cd4761cca01eef10957274f16b67140be72a982827"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.27.0/netwatch-linux-x86_64-static.tar.gz"
      sha256 "e8dc98bfeeceedbb99a8a4e10a20b28b5fb6b23ca2a47d4b23c226074c7cb8d3"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
