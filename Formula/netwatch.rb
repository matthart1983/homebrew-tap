class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.31.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.31.1/netwatch-macos-aarch64.tar.gz"
      sha256 "0695468f3d5fe6182b743d629955068acd30e17bb94c6e23b738838ddaab857a"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.31.1/netwatch-macos-x86_64.tar.gz"
      sha256 "b62262c7fe221962d4b1cb57283f7c2faeb02f95b0e1929f3804f58d3e5e2805"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.31.1/netwatch-linux-aarch64.tar.gz"
      sha256 "8bb897b243365bf6b5aea38f349a25d91f071bbc576b1ad434d4b1bca17409e4"

      def install
        bin.install "netwatch-linux-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.31.1/netwatch-linux-x86_64.tar.gz"
      sha256 "f1c7aff2bca01172c70444f7050533b2de39d931d19ad90cb1c1b6ced3e918dc"

      def install
        bin.install "netwatch-linux-x86_64" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
