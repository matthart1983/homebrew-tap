class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.30.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.30.4/netwatch-macos-aarch64.tar.gz"
      sha256 "b515d540d11fcd1b5e32414191926a65bc3fbe6ded5c39439b8bd522c3040767"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.30.4/netwatch-macos-x86_64.tar.gz"
      sha256 "eafa126df0f25bafaedfea7e5c4ae5efd3943884b22ea853cf502f37950a59f5"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.30.4/netwatch-linux-aarch64-static.tar.gz"
      sha256 "3795b2564a2d5d996b58389d94e37ce6fc8dec4a00001361a1703559835c4dc5"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.30.4/netwatch-linux-x86_64-static.tar.gz"
      sha256 "b0b269690100ee45fc70a624caa4a83c2c2388ac5660a853012b59fa83b44702"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
