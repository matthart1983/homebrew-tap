class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.20.0/netwatch-macos-aarch64.tar.gz"
      sha256 "e0868b1db9b8095f9f7ac2cc14f524a3bbd6b0efa94620512d1e109c16e85ca6"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.20.0/netwatch-macos-x86_64.tar.gz"
      sha256 "165cf6726db9e7427842095d28c23849203b8465fc2fbb42ac57af3f1458a3f6"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.20.0/netwatch-linux-aarch64-static.tar.gz"
      sha256 "a8df2fc0909d88f671a7e464f4aa6a5afc70966c30aa559999cdd6b7a9b5313f"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.20.0/netwatch-linux-x86_64-static.tar.gz"
      sha256 "9120fea723908a22cca1a2225581d033a5bc14e8d73d94fe0cead5e9ddc781b3"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
