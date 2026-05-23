class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.17.0/netwatch-macos-aarch64.tar.gz"
      sha256 "87949e74a28c379d86acf4e309f8761737e063003a7c6af7933a110f9fa543a3"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.17.0/netwatch-macos-x86_64.tar.gz"
      sha256 "0fd38172be4bccca87f00eecc5059c63f1d9ae6a945cb9fd24efc9f665f9d5b5"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.17.0/netwatch-linux-aarch64-static.tar.gz"
      sha256 "f311e3b540a106e1920b09db79394c1fab30a733068e648cdc8f488f55a99ddf"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.17.0/netwatch-linux-x86_64-static.tar.gz"
      sha256 "0d9ed8e87705cae79f238770da4c93d477ebb0d7b57d69f836fbee3f313bf34e"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
