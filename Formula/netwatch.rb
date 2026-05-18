class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.16.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.16.1/netwatch-macos-aarch64.tar.gz"
      sha256 "c8a1c5238c17fd1ad6aa17589b13dac44734b6ec4e185e8daed0529a40dc1289"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.16.1/netwatch-macos-x86_64.tar.gz"
      sha256 "910e705dbffa59744ebd56975ddbe37271567ef583ed1fe2824f859fadf1e9c3"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.16.1/netwatch-linux-aarch64-static.tar.gz"
      sha256 "e6e723a39a1ee57434ad49954255337a5197f095b2c8f0af0b2d197944650b96"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.16.1/netwatch-linux-x86_64-static.tar.gz"
      sha256 "ced5f319a7b814e5a1e0e3f09bdca53a69216f4fc80ae2aebc032be0c3a59632"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
