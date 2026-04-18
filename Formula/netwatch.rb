class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.12.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.12.1/netwatch-macos-aarch64.tar.gz"
      sha256 "d83442afcba8ba455ac5efa60f56a6e70803d1ee5d8b0488de89d3c393067df6"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.12.1/netwatch-macos-x86_64.tar.gz"
      sha256 "957b2eb80cdd868140fd19f14aa5c0cd1ee43151ade60aacba553baae43dda8c"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.12.1/netwatch-linux-aarch64-static.tar.gz"
      sha256 "4b6b25673a3e4dac8dfe8293e80b3892cb5852d51ce59307da9cc7c8e73f949c"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.12.1/netwatch-linux-x86_64-static.tar.gz"
      sha256 "c0886678c0ffed975424b6fce36498c2dde0cb8c02b96f231be9319d44c4b444"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
