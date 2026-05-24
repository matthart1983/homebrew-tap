class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.21.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.21.3/netwatch-macos-aarch64.tar.gz"
      sha256 "dc7820bde8c1b4f3117521590d9d2e34bc98a263ee318ba8da0e0ba304b9ae08"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.21.3/netwatch-macos-x86_64.tar.gz"
      sha256 "744f29a57890dcc5a5ce0aaca926eaed160ebedfa691bc828846ca75d4198917"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.21.3/netwatch-linux-aarch64-static.tar.gz"
      sha256 "de4d7d0667a0a0ac763427d9275a3bdb022796fdaebc01d2eab10a08edbf51f5"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.21.3/netwatch-linux-x86_64-static.tar.gz"
      sha256 "92eaf942007a6f51fd801ad0d1c3eedc9ddc0fa2904f7d4eaa2229ff4cb6204b"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
