class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.12.0/netwatch-macos-aarch64.tar.gz"
      sha256 "32f0f4443d660340277e35579e109acd1d4898416753c11b71cd9eb73af49867"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.12.0/netwatch-macos-x86_64.tar.gz"
      sha256 "39222d66197a25f9118bf47b7b0c27cb05d2440ae4b36421092c140d8cdf695d"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.12.0/netwatch-linux-aarch64-static.tar.gz"
      sha256 "c16c8f723c10aefa820babc1f95878549d73b75a922acbe284c5713663ef13f6"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.12.0/netwatch-linux-x86_64-static.tar.gz"
      sha256 "22d050eadd0a896150208614ac2d8ffab445a38f882056535cef01cfec2db2fc"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
