class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.12.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.12.5/netwatch-macos-aarch64.tar.gz"
      sha256 "e8bd09fb0cd671389d490e29c2f8fd3b3154ee5da117bd8bfa3906911b6b85b6"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.12.5/netwatch-macos-x86_64.tar.gz"
      sha256 "9b25e155bbbfc0e2d02fc5c141c625ff68961ad2a756521fcff3280db910d084"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.12.5/netwatch-linux-aarch64-static.tar.gz"
      sha256 "8e525b44d4cf71ce66ecaed05632d29ee3126cbe4d464c15f59e73132c8b84e5"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.12.5/netwatch-linux-x86_64-static.tar.gz"
      sha256 "d7696e8425ee52e09bf426bb4569b9b62cfb490cee3fb99daa810fdf131ddcaa"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
