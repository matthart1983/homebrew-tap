class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.17.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.17.1/netwatch-macos-aarch64.tar.gz"
      sha256 "3d58c8257c5ee1d82ee9df42f92468a3b554c8697ae116a7ee8bc9da1428788e"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.17.1/netwatch-macos-x86_64.tar.gz"
      sha256 "513aabf4e1dbaf1e7a9d5b637646a4773501dd4af3e5069ea5d8d1cf7ed19947"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.17.1/netwatch-linux-aarch64-static.tar.gz"
      sha256 "c6451a5cba27d8d638e101608ee4dc515e98a607a3a3851d90f22747c80611d1"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.17.1/netwatch-linux-x86_64-static.tar.gz"
      sha256 "593d5e374383c7a5f959e99f872d626345d483e20e0e790a6fe4f77d0c5164ff"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
