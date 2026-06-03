class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.25.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.2/netwatch-macos-aarch64.tar.gz"
      sha256 "40f8c0bbd5a63c1520721b33bffae07942f7733e88d89627b8844780a6463a00"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.2/netwatch-macos-x86_64.tar.gz"
      sha256 "b948f7ace8b7fe10942c13b5820b53aaf61880b76ca5ff7cfe427fe1de1a9f2b"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.2/netwatch-linux-aarch64-static.tar.gz"
      sha256 "c1844a2ca26951bc5fe464f92933685ef2c4edc9cda8ac8f3893a0f6972fa7a6"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.2/netwatch-linux-x86_64-static.tar.gz"
      sha256 "297a42b84420d93ddc3948aaae8fc75da462dcdb7453c66cf297a8e35c90b149"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
