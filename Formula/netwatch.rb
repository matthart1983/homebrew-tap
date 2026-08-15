class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.29.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.29.2/netwatch-macos-aarch64.tar.gz"
      sha256 "9253fa7fb40b15f76cbc53c0bea5c031b3ef305a60faab25918560c560c0671f"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.29.2/netwatch-macos-x86_64.tar.gz"
      sha256 "bcd78afa19d54d1d7d31e2d046829272fd48da674efe60506bf2c7f513eae82d"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.29.2/netwatch-linux-aarch64-static.tar.gz"
      sha256 "3d8297545bb1d9eba2cb323ea45d874a5beabcd24a939514010d7e28216753b6"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.29.2/netwatch-linux-x86_64-static.tar.gz"
      sha256 "b9bac01aa2247b9d089105ddf184e64376d9e203d8beeb0f0c1f6592d58fe6ee"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
