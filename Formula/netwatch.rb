class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.31.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.31.0/netwatch-macos-aarch64.tar.gz"
      sha256 "14f681c14323bb2e5261d60d0a9fefd5ae0bfde4b67477cba1df95d237be0460"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.31.0/netwatch-macos-x86_64.tar.gz"
      sha256 "7cf09bd952693f5c58ab03f30c98ff358eb6c3d2c9d0d86d712f763947cffb80"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.31.0/netwatch-linux-aarch64-static.tar.gz"
      sha256 "8b3c8dfff6b768a2e3c3eb8241d7717be139e4f6bfbed5234d2929f567928f69"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.31.0/netwatch-linux-x86_64-static.tar.gz"
      sha256 "cc52fa31b65a4d1144b032e6e58b4e5f416e9cc240b8a859c9e2912d6f112ce3"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
