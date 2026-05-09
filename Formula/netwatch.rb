class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.15.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.3/netwatch-macos-aarch64.tar.gz"
      sha256 "08d15388507da8ee3a91b8fd0b8794b1358924518971c1c463abce31df1a032d"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.3/netwatch-macos-x86_64.tar.gz"
      sha256 "96ee232b2a325657cae0569ba619ff137f23404af3e2c956abed54b6e990a1ab"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.3/netwatch-linux-aarch64-static.tar.gz"
      sha256 "c02ad414edaa235d7e3eaeb61776eb483b45c08b95f18e76a5b896b545e4f592"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.3/netwatch-linux-x86_64-static.tar.gz"
      sha256 "1c9f46c572ce44b688b2ce4f38b36fb214bfefcbcb5daa6a6f2b1361353d995c"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
