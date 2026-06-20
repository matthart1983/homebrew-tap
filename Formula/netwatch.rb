class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.25.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.8/netwatch-macos-aarch64.tar.gz"
      sha256 "918a59bc5a98029d338861ab1889b833b35df996cb4363a2ada36d926ec3123c"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.8/netwatch-macos-x86_64.tar.gz"
      sha256 "b0d747ce0f738d70444abcf4338cf781da12fafb57827a12294d678186f5be65"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.8/netwatch-linux-aarch64-static.tar.gz"
      sha256 "004ff37ecccaf4dec418d7157b471968dd922658b07a23c51a0f88871a8f4574"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.8/netwatch-linux-x86_64-static.tar.gz"
      sha256 "18d0764680cfa596d23fd3766c3812df670ff493f7803acf117788abd195b485"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
