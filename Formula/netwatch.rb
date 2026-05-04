class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.0/netwatch-macos-aarch64.tar.gz"
      sha256 "5778edf9379bc3bf579f04d7f457958954b0b0fda26655397c4fae026ff3bb80"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.0/netwatch-macos-x86_64.tar.gz"
      sha256 "7f259ecf42a7e5baf59ee68fb4a51391e9cb305f1e4bd19b80f5c00c6cdf677e"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.0/netwatch-linux-aarch64-static.tar.gz"
      sha256 "376ef6009c792c7df6c031210de97b79730b6c887846cc6d518f7f6936633f33"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.0/netwatch-linux-x86_64-static.tar.gz"
      sha256 "7295a809d764f25035f132eea604ffb7f8bd12caeb528fac95339e4def3ad8c8"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
