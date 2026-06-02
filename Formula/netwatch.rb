class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.25.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.1/netwatch-macos-aarch64.tar.gz"
      sha256 "8fdbc0440e19c15a1018dfada72cdd1a4ef28af7b8c07f98bd35610751a0e6b4"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.1/netwatch-macos-x86_64.tar.gz"
      sha256 "9c5a78419a6050ddc2a898e8bddc5f7ec9bed428de682bbee5d0add4f88d39f8"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.1/netwatch-linux-aarch64-static.tar.gz"
      sha256 "c78b4bd4d0f0e6fb5e1230e232015fc6ada1fff02a39b0cba9e8e9059cecb9f9"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.1/netwatch-linux-x86_64-static.tar.gz"
      sha256 "1a32e9ef9026c8837726601033109c761a8e3d139661175af366589832f1a71e"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
