class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.15.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.9/netwatch-macos-aarch64.tar.gz"
      sha256 "44a01894683c8a22fca53d027864470d83a50d6e91b23da6e237e7c6de02ef0f"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.9/netwatch-macos-x86_64.tar.gz"
      sha256 "73c59df4e476f174150192487e153b1574926fd2354c975b68dbfd5d47f69b63"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.9/netwatch-linux-aarch64-static.tar.gz"
      sha256 "598b451a24202c2c6171f84d9d68eeeea559ec3d2468998dd9ab9edee7c2afec"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.9/netwatch-linux-x86_64-static.tar.gz"
      sha256 "d42250b115016852f42862c4d5beac4c7223d58c33293209f37c3c4d036cf6a4"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
