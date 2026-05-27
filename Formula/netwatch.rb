class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.22.0/netwatch-macos-aarch64.tar.gz"
      sha256 "147b64be6ae7d021c73e3498473ab3276422bdaf7ea3fe4555b370ed10c1f15d"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.22.0/netwatch-macos-x86_64.tar.gz"
      sha256 "17d561b1c63e4f637d910ecf1db60c0a5f3015d0cada63d0a1bc7f74aaaeaa97"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.22.0/netwatch-linux-aarch64-static.tar.gz"
      sha256 "3517747f030e9ca769782ac9f5467d9ff32e817fe4a2209a181e901af4829746"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.22.0/netwatch-linux-x86_64-static.tar.gz"
      sha256 "33032fc1a47298c33b59b1ea045103b2c608a3db06a85c6d1a27763dc0db976a"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
