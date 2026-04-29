class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.14.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.14.1/netwatch-macos-aarch64.tar.gz"
      sha256 "318f292f302671ef2750151eb2574056ed915abeee1067950c851c0155913a28"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.14.1/netwatch-macos-x86_64.tar.gz"
      sha256 "26385bffe3e07b87bf9ab5a9ff0d1db1dbef42dbd43823bae2b47c0c062de364"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.14.1/netwatch-linux-aarch64-static.tar.gz"
      sha256 "3f5757926fff4aa7a503bdf1a1ea01c4fa9c5688aa585316f556a543dd770b46"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.14.1/netwatch-linux-x86_64-static.tar.gz"
      sha256 "dbf779d16d9ab53ab5378117cd0dc3f5c6e89a9b144155a6a1798eaa6c817974"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
