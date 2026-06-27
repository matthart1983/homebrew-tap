class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.25.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.9/netwatch-macos-aarch64.tar.gz"
      sha256 "92c8bc178fdb1f2eac8748b9830585d6ee2b7c1b657776bb4c1dd758b9146c06"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.9/netwatch-macos-x86_64.tar.gz"
      sha256 "453629107e4eb8d3cc713f9aa850dd82a4d93727883d48ebbe8928e674441986"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.9/netwatch-linux-aarch64-static.tar.gz"
      sha256 "aa68109ad53f0f9429e14eb53d037c4cfd908f7f40087971ab941de6612ac7d7"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.9/netwatch-linux-x86_64-static.tar.gz"
      sha256 "cd6a90560c0c119aeea662c41c96b1a055c3aa7276fc3896020b4130c26f9329"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
