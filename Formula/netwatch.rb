class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.30.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.30.0/netwatch-macos-aarch64.tar.gz"
      sha256 "625aa518abd952c8da80ddbf9d4d4dd6521ded4bf294e9522f912e283a614e9b"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.30.0/netwatch-macos-x86_64.tar.gz"
      sha256 "0f298acf9559af86742e8bce095cada15155218dd6348460c5997d02bfb40286"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.30.0/netwatch-linux-aarch64-static.tar.gz"
      sha256 "d771a90684ae5bbf4a9b9ea8689f913abe6175b977aeeb49013e4780530539fd"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.30.0/netwatch-linux-x86_64-static.tar.gz"
      sha256 "e39fc2533037082e4d78630c43b3b5868dea8199ccc7fa29e7bcb55f6b98aedf"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
