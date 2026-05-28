class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.23.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.23.0/netwatch-macos-aarch64.tar.gz"
      sha256 "36f13d3336dc65108f9c0d37bdcc8c0f5b2c2e5f1db4f75348d02ecdde0fe9cd"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.23.0/netwatch-macos-x86_64.tar.gz"
      sha256 "bb0bc36e585a75b7a356a3a0610e3d5b22aae1c6daa73504cffff4ed3bbe5878"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.23.0/netwatch-linux-aarch64-static.tar.gz"
      sha256 "d257d4c54c4a6e186840a2b4f4b75fd76779ac6c7282888d512960dced69e511"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.23.0/netwatch-linux-x86_64-static.tar.gz"
      sha256 "8c9b05b938f1cec2128a3f57f4ab7c9f0edb0f8aeb648be49523568f1a013916"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
