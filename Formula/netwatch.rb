class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.30.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.30.2/netwatch-macos-aarch64.tar.gz"
      sha256 "73e2b4492ac8085113caa145cc0d61d5b65054c2d834a4f33ed4b9c17f9d223f"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.30.2/netwatch-macos-x86_64.tar.gz"
      sha256 "c9f3e4697bc94088f3358cad3f6cfffbe5413011fdddab0156519e46730fe576"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.30.2/netwatch-linux-aarch64-static.tar.gz"
      sha256 "ca3fb7501e7a1aaaa59e2462cd923859fbd558f74bdf6af5c695efed26e311e0"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.30.2/netwatch-linux-x86_64-static.tar.gz"
      sha256 "1aed489c1ab97ad71b95c194dd59f4f291bcd225aaab8522841b1352975e33a6"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
