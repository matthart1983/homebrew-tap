class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.29.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.29.0/netwatch-macos-aarch64.tar.gz"
      sha256 "b912d6687ae25a38a8f1931165bbdd305ab1a1e226ca9167d94ecae113205fb0"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.29.0/netwatch-macos-x86_64.tar.gz"
      sha256 "df9307984af88640ede9d329222a28e7ca11eb3266b6616cbefc9d4f8b804249"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.29.0/netwatch-linux-aarch64-static.tar.gz"
      sha256 "43d782ab4d5301c6481a1c8f1649b83770b0511e7f2ec229a247f9adfcde5eaa"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.29.0/netwatch-linux-x86_64-static.tar.gz"
      sha256 "c19f2f702e7529592a84b2209b5121be43bf2f0463c68540ca0d543870640691"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
