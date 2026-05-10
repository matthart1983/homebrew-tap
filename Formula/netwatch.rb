class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.15.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.5/netwatch-macos-aarch64.tar.gz"
      sha256 "60e674c060e766f99031f36169e08474fb745eb85542b42bbaa1322ab0fc12dc"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.5/netwatch-macos-x86_64.tar.gz"
      sha256 "13ca085857238f54301949923dbafcff101e09858f1ab1c3b23efb680a6e72fe"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.5/netwatch-linux-aarch64-static.tar.gz"
      sha256 "9776eb3a814931d42cd4f393ed0c3c8a4272d161d14726da9da356fbdfcdf3b7"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.5/netwatch-linux-x86_64-static.tar.gz"
      sha256 "438c8d7e98caec5045ec852b9a55aaed7a5f50705e1d1593367b388104c627dc"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
