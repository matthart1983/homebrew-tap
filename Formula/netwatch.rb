class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.12.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.12.4/netwatch-macos-aarch64.tar.gz"
      sha256 "71f436aec5df6121243b27d286128770fdc412a0ae3ec467a640a3d6c857dc56"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.12.4/netwatch-macos-x86_64.tar.gz"
      sha256 "67b68cb3b93ec1de4dd76b802c8b4953e9d0399ecede115fa1fd071d15336727"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.12.4/netwatch-linux-aarch64-static.tar.gz"
      sha256 "951fd51c319f886e2aea021a9cf1a2fdf7fe68825ec3333bcfa2d86b31a9ff40"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.12.4/netwatch-linux-x86_64-static.tar.gz"
      sha256 "4c39cb55cdcdca874bda3d74122276950547ef6117c030825f97798a5259ad12"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
