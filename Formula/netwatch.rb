class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.21.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.21.7/netwatch-macos-aarch64.tar.gz"
      sha256 "31852860f6dabc68d9e234ea7673c104fc1052c6ecbe801d33d590ad60a7b548"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.21.7/netwatch-macos-x86_64.tar.gz"
      sha256 "bdf01b77c0fcaeb6746e8de5e79ba07c200c5670a3631ebaf7f4202246d32831"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.21.7/netwatch-linux-aarch64-static.tar.gz"
      sha256 "933beb271068998af53ecc26df9c06873c8f74e7c744f0a0d31d4d2ad2999561"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.21.7/netwatch-linux-x86_64-static.tar.gz"
      sha256 "2289b29f5d4ea59629cd8abe256b0f290810db616292b5e9314f3d0c9b8581b0"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
