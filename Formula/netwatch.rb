class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.21.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.21.2/netwatch-macos-aarch64.tar.gz"
      sha256 "cbe314cf894ec8d1bc9d75139f5f6fdb5ccfba0616689185caf5d44a9e0229f0"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.21.2/netwatch-macos-x86_64.tar.gz"
      sha256 "0e7e999eabebb4fb2742ff1f515b7589d1d9662d96bc52c74e5011267853a794"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.21.2/netwatch-linux-aarch64-static.tar.gz"
      sha256 "d158b0a78ff052b19fec7c93fd0bdda683f907802275f44f40122e8a7cb06c93"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.21.2/netwatch-linux-x86_64-static.tar.gz"
      sha256 "c29200789aacd8900502f8c7ef01ad99f7111d059e108a595d35a7d9d88d0116"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
