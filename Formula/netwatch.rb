class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.26.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.26.1/netwatch-macos-aarch64.tar.gz"
      sha256 "0a2b120e1da29f084a76342a9a0326d4b023ef3fe8c5e463fe2178f33a10f251"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.26.1/netwatch-macos-x86_64.tar.gz"
      sha256 "3d49b20bca9535d163c5295f9709befa896312a1522b2a9f3e8cf85856a4dd69"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.26.1/netwatch-linux-aarch64-static.tar.gz"
      sha256 "fec12caa96136ab565f2f0ca2b70a85c7a800edf770145c275ba8f3d33e80e8f"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.26.1/netwatch-linux-x86_64-static.tar.gz"
      sha256 "824c37e8c1977387e22a585c09f1789b0b59231af6ce294593b897045a46bb71"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
