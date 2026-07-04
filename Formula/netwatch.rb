class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.26.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.26.0/netwatch-macos-aarch64.tar.gz"
      sha256 "e1eb8ee71709a90e59c6823eda06542e6b88365b019b066ffd3d2c1fa0ac2e6d"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.26.0/netwatch-macos-x86_64.tar.gz"
      sha256 "ee3bbebe763ba9731e88ad3de482cb3251bc3b90e619355cbe6f77330f7a8408"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.26.0/netwatch-linux-aarch64-static.tar.gz"
      sha256 "76026377ae52d76585d6e8ce4bdd76345f4f8504ba91e6b1cd856cf5a27e7278"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.26.0/netwatch-linux-x86_64-static.tar.gz"
      sha256 "f7929627d4af44c4e51fec0be8b59f437706ee6865d074a276ac3475b72c0e57"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
