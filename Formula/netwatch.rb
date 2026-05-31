class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.25.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.0/netwatch-macos-aarch64.tar.gz"
      sha256 "0c694c667c852ca10b15ef53fd81fffb14a6887250475a0d92f4d07a01ac46e9"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.0/netwatch-macos-x86_64.tar.gz"
      sha256 "535a06252f3037274ef211d2e127d24fa186329d5f1a6e0c89fac2abec933802"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.0/netwatch-linux-aarch64-static.tar.gz"
      sha256 "e46a4bd53d9ae172d4b4d0bba1b0b7b33b5ec9f15862928d1d8c4f46c1c77d88"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.0/netwatch-linux-x86_64-static.tar.gz"
      sha256 "1eed7b434da6cb9f75a2d46e31cbd055540748b8f18e10e2dd7c315cbdd9454a"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
