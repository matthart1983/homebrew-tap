class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.25.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.7/netwatch-macos-aarch64.tar.gz"
      sha256 "29f5c68c239d9099f66c1be5351f83662594151aab4b0657dd40c958179e8e8c"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.7/netwatch-macos-x86_64.tar.gz"
      sha256 "7c078b51df1dfef870738e279cac744ac08584b2d3cec04dd18501ff71af4e22"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.7/netwatch-linux-aarch64-static.tar.gz"
      sha256 "23360b0bf3d176ef1795f8fce2bd4e758588f926a7002cbd1aac65726d056c42"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.7/netwatch-linux-x86_64-static.tar.gz"
      sha256 "403385a88bae2be1f6d6eb3c09d5c79f1bfc2aa799efce8be1eababa5049e63f"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
