class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.19.0/netwatch-macos-aarch64.tar.gz"
      sha256 "7ebaeecaaa24a5b3167567d5d7ba57f39cf6ab8c95c87fd5ba0e652f9aeedb49"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.19.0/netwatch-macos-x86_64.tar.gz"
      sha256 "0c4bdc807c8d141fe9310923c4384b0551908ca6fa611d28d9312be850f72e11"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.19.0/netwatch-linux-aarch64-static.tar.gz"
      sha256 "cd962f16505b4bc8820ec4a06a1047f37dfaeccb003bba3d95cbbd969a6249d0"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.19.0/netwatch-linux-x86_64-static.tar.gz"
      sha256 "378f9fdc9814096e1f745fa2e71e72414826e721f431fb859e7ef3e1f13024f3"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
