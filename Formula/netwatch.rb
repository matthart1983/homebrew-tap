class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.25.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.4/netwatch-macos-aarch64.tar.gz"
      sha256 "76db51344e1497baf39589ed27c482f2f454080ca7e8e8d885a550a168907313"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.4/netwatch-macos-x86_64.tar.gz"
      sha256 "bbd23369c800f738839ca692569b8bb194093cbf4ce08e9ffb6505b9e1316bd2"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.4/netwatch-linux-aarch64-static.tar.gz"
      sha256 "cebf05b19413427257e49caeb77eae9def5307655e043ef34e8a88aea34a8750"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.4/netwatch-linux-x86_64-static.tar.gz"
      sha256 "e0f675eb1e3a3416099e8ee9c494a46c3c6d5ffd167430f832b0ca87a739c33a"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
