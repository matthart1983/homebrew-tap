class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.29.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.29.1/netwatch-macos-aarch64.tar.gz"
      sha256 "de241223f295db220c394697d124bab35a18765bf80df538cc0ec34d8a39b8ca"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.29.1/netwatch-macos-x86_64.tar.gz"
      sha256 "e6ddb5e4af2b030b1e5ed3fe355bb27fcea56c1fbf52521529ac4f3fd25ee3d3"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.29.1/netwatch-linux-aarch64-static.tar.gz"
      sha256 "7dd5c1a8eda34b8fa341087025f9bd5d63c359c1b74e6ffd6e7c3cccc414b38a"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.29.1/netwatch-linux-x86_64-static.tar.gz"
      sha256 "973f4f1f1ad96f30998ece3dee60d9cfa8764e7510c36aef9fb0b97860561fc1"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
