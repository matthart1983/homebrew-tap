class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.28.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.28.0/netwatch-macos-aarch64.tar.gz"
      sha256 "a60fae84dec1551063affbd898fd2060e653f3718424c6f30b108c0c31d4767c"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.28.0/netwatch-macos-x86_64.tar.gz"
      sha256 "cbecad209826f407f2d8ed7e3f3e198f8b4a33576f3c66540fbaa80e0e5577cb"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.28.0/netwatch-linux-aarch64-static.tar.gz"
      sha256 "cecac98ea715b47f0d53ad5fc6af30bdd89d92a00a9d324d67ecbe5908b5457f"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.28.0/netwatch-linux-x86_64-static.tar.gz"
      sha256 "8cda9137810b68e680ade3e3331e7990fd8efbc162fce90577ddbfb9b2d2918e"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
