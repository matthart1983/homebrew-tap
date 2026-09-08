class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.30.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.30.3/netwatch-macos-aarch64.tar.gz"
      sha256 "3b833432ec9002dc9e00e722fefdac4cc3261029cf478a9ca9440d67d0b4dd83"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.30.3/netwatch-macos-x86_64.tar.gz"
      sha256 "890d79755269c2346d77095f8d3d9e083b36e04564f982e8f4ff839b201fd1e8"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.30.3/netwatch-linux-aarch64-static.tar.gz"
      sha256 "ee32810eb2f6b1a0133f84c2018578613df4c0f69d41dbd63bcebc6e62c85066"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.30.3/netwatch-linux-x86_64-static.tar.gz"
      sha256 "79d085671097136a12b0c90d21e246d81ec292de3bb500c0d4034b5d6bb558a5"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
