class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.30.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.30.1/netwatch-macos-aarch64.tar.gz"
      sha256 "912d6441ad9959d39004f94fb51c52d87c5910e2299438a27ac614f0db3426a5"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.30.1/netwatch-macos-x86_64.tar.gz"
      sha256 "3a7156226b95462979b5d4f6c26a8c592d26b1c9ef4aed6392198d592926eb99"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.30.1/netwatch-linux-aarch64-static.tar.gz"
      sha256 "35ce33f9f69b06a155e427ae9bcf1ba6692994a45a7115d7706603ebaac7ee6e"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.30.1/netwatch-linux-x86_64-static.tar.gz"
      sha256 "6d8af990ac3301b37ed46ba0b3493761d2efcbbb2ba0253dbfd23ee553a995ad"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
