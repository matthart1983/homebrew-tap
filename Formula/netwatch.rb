class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.21.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.21.4/netwatch-macos-aarch64.tar.gz"
      sha256 "95063051e25d9ea9a37bb712e158b51a622b55bac7221f495300e3140481826c"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.21.4/netwatch-macos-x86_64.tar.gz"
      sha256 "60e028aab2da0bc27a6228823c522bf65c9568f199a091644a1ad0e87ad40743"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.21.4/netwatch-linux-aarch64-static.tar.gz"
      sha256 "d727382aca6e6b8e8116fdda8b39338960308ef06ab60b7589af74f0c564ca81"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.21.4/netwatch-linux-x86_64-static.tar.gz"
      sha256 "6507cb526d6b5b9954752aec50aa75d776924b250cd8f4c8fe40fcb4db31cfda"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
