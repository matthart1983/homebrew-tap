class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.21.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.21.5/netwatch-macos-aarch64.tar.gz"
      sha256 "022f4c8ce9172e87b2ae143061027882ec12ce4bf009dd7ff8a7a87d88d74ab8"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.21.5/netwatch-macos-x86_64.tar.gz"
      sha256 "0bcc3c5315355562c5741c3f21419b0c3c1764538053a4d8671efb5ff3a6a477"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.21.5/netwatch-linux-aarch64-static.tar.gz"
      sha256 "2f6fa35fb46696ac9beb86295ddc1e71f685980b5c301d3ed9a3a9736f9f841f"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.21.5/netwatch-linux-x86_64-static.tar.gz"
      sha256 "02b3e00f0364872ab6c8305c97d6d103535df32cc5a92946bc0041a4e0fc0ed8"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
