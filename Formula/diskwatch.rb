class Diskwatch < Formula
  desc "Single-host disk diagnostics TUI — sibling to netwatch and syswatch"
  homepage "https://github.com/matthart1983/diskwatch"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.6.0/diskwatch-macos-aarch64.tar.gz"
      sha256 "51c35de9d55d314a07cfd04b71e2b5474310f19f3d8ceaa349d195d70c89cff6"

      def install
        bin.install "diskwatch-macos-aarch64" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.6.0/diskwatch-macos-x86_64.tar.gz"
      sha256 "4c0e5a5d889d3feecb1e48b7208397b6f1752ba6e5b14cb68c6edb8f5a1a31fd"

      def install
        bin.install "diskwatch-macos-x86_64" => "diskwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.6.0/diskwatch-linux-aarch64-static.tar.gz"
      sha256 "34af058b003f890a411b8d602c02e5a85aae5f678e28f6bf7abb90747422203b"

      def install
        bin.install "diskwatch-linux-aarch64-static" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.6.0/diskwatch-linux-x86_64-static.tar.gz"
      sha256 "c3b9ebe42535389675839097ecc9c80a47ac7fd1d845bcdd9d23035beeb0f37b"

      def install
        bin.install "diskwatch-linux-x86_64-static" => "diskwatch"
      end
    end
  end

  test do
    assert_match "diskwatch", shell_output("#{bin}/diskwatch --help 2>&1", 1)
  end
end
