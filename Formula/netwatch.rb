class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.31.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.31.2/netwatch-macos-aarch64.tar.gz"
      sha256 "1812db3f8ca88a9de9f5ea20c4c85318a89aaf97b222372bbd3a1098348a5907"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.31.2/netwatch-macos-x86_64.tar.gz"
      sha256 "311f6637c95410958c6c2aaa21664c639690203854896a2628db295641130999"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.31.2/netwatch-linux-aarch64.tar.gz"
      sha256 "a5b30ee1460a91c0ab8e8296285f3772a6cbe76895b0471281bb5a5eb7159118"

      def install
        bin.install "netwatch-linux-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.31.2/netwatch-linux-x86_64.tar.gz"
      sha256 "91bc65946cc5c920bf4aaae60f8c293375d66b9f37a75231c896fa5777a03895"

      def install
        bin.install "netwatch-linux-x86_64" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
