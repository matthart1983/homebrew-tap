class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.28.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.28.2/netwatch-macos-aarch64.tar.gz"
      sha256 "b2c21ddafcf39eb4813b5c15be537f4833589f9f74d5f879fd430dc425f5e03e"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.28.2/netwatch-macos-x86_64.tar.gz"
      sha256 "d832d55916ccdfc630dbdc8ef37f9c5285bf11f19bfafdf80ec7b9fd5554ad4b"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.28.2/netwatch-linux-aarch64-static.tar.gz"
      sha256 "b78a84a28964d3269f342e03e132e1924c04191050eb30fa6fc0c2b627acc3d9"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.28.2/netwatch-linux-x86_64-static.tar.gz"
      sha256 "85246cb1dabb04c382d2f16164fbbb0ab9901595b3f5da6667bbfdb3ceebd01b"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
