class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.25.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.6/netwatch-macos-aarch64.tar.gz"
      sha256 "96422f6814c61799523c5af00d45fde7683aeeda4f44f1064bc063e4781a22db"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.6/netwatch-macos-x86_64.tar.gz"
      sha256 "a13e63e0706670ace704f5bc927f5886da9a0a100292961d3b62896e873224e3"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.6/netwatch-linux-aarch64-static.tar.gz"
      sha256 "6186884d46be8b89ccfa72ff0841065784b903f0303f25b15a955f05ff819dab"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.6/netwatch-linux-x86_64-static.tar.gz"
      sha256 "08dce648cc00301abffd0208d1908f4035d06c63aeff55e9df0c6acb541df72d"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
