class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.11.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.11.3/netwatch-macos-aarch64.tar.gz"
      sha256 "cb651062c98d1beb7673ea9f23f988db06e755704a5a4de7a2617acb6aa63e7e"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.11.3/netwatch-macos-x86_64.tar.gz"
      sha256 "ca5cd8fa9d6dca48b10f62234550e05dcc5002d3d627285024ea301cbfa5cb9b"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.11.3/netwatch-linux-aarch64-static.tar.gz"
      sha256 "dde516a9cbcd86b1df8ee18a868639848b726deb51eab11775fb64ae78f5b62b"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.11.3/netwatch-linux-x86_64-static.tar.gz"
      sha256 "1021848024b44d9602502b2a861e6ca3d549e66df664f97fab38ce9831cf4ab2"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
