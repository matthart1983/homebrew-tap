class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.15.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.1/netwatch-macos-aarch64.tar.gz"
      sha256 "f4ab19863f5850c11663533b69edd11ecedbeedf1ab44e776112702164bee18c"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.1/netwatch-macos-x86_64.tar.gz"
      sha256 "9f26c96f29471ab531c676a7976e5af8e4918e7c52a2dd3dc7b8ceb5fd2ba485"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.1/netwatch-linux-aarch64-static.tar.gz"
      sha256 "4c221ca7eba372c699a948fe9fae5cfb95bbf37581049d7e1b9731ddbb8bc2a2"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.1/netwatch-linux-x86_64-static.tar.gz"
      sha256 "ddc60588633978f379d624342448f6a3e8b42dda796e1bd51a5d7def2ab1d1dc"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
