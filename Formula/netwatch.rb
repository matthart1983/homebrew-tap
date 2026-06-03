class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.25.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.3/netwatch-macos-aarch64.tar.gz"
      sha256 "14a1be8a174643d567fc3db12b1c97bae8ed0d45611ff813df5e39e1c4afa3f0"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.3/netwatch-macos-x86_64.tar.gz"
      sha256 "e6d61ff2e44dd66fc6f549a6d2f23401d39cb9ba5349b66cef1f52715f343b2c"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.3/netwatch-linux-aarch64-static.tar.gz"
      sha256 "a3c9cbcba53c7c3dc7ec365cf8926d1376c37c6b71def5de6b8dd5043efcfb27"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.3/netwatch-linux-x86_64-static.tar.gz"
      sha256 "da79393091af6af3e7a6a740b8dbf49a87fdabda431d4be2df9f7becc061c625"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
