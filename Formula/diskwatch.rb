class Diskwatch < Formula
  desc "Single-host disk diagnostics TUI — sibling to netwatch and syswatch"
  homepage "https://github.com/matthart1983/diskwatch"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.2/diskwatch-macos-aarch64.tar.gz"
      sha256 "017a155dc517fe1f3178ffd5b846ef23ca15a2ba0609e6553bc0ec1f269d6c37"

      def install
        bin.install "diskwatch-macos-aarch64" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.2/diskwatch-macos-x86_64.tar.gz"
      sha256 "d3636de022faa2642b170203d6d084feb90546cffe4472ace1f011f605677149"

      def install
        bin.install "diskwatch-macos-x86_64" => "diskwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.2/diskwatch-linux-aarch64-static.tar.gz"
      sha256 "d182b6d5bbbb4e25c28984301e4a8254a8d46bef245842b6b0ec0cbe2c6d8e06"

      def install
        bin.install "diskwatch-linux-aarch64-static" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.2/diskwatch-linux-x86_64-static.tar.gz"
      sha256 "b640ba21fa5193a79d524548cf2726cc04e8bbc20eab8620d84b97b4f3de10f3"

      def install
        bin.install "diskwatch-linux-x86_64-static" => "diskwatch"
      end
    end
  end

  test do
    assert_match "diskwatch", shell_output("#{bin}/diskwatch --help 2>&1", 1)
  end
end
