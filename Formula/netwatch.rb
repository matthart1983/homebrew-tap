class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.15.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.8/netwatch-macos-aarch64.tar.gz"
      sha256 "f3da1391d73c1063407e76019c9c2fe54dd843a338d7cc618d918fe970d864a3"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.8/netwatch-macos-x86_64.tar.gz"
      sha256 "7ca789816ae53db04e65daff28b55bcbd70e901fc0cd24d9bb12252587db6d8b"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.8/netwatch-linux-aarch64-static.tar.gz"
      sha256 "e14578ec59101afe3d5a41a433915018904d7cbf6a7b68c648dcdc79415a1753"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.8/netwatch-linux-x86_64-static.tar.gz"
      sha256 "7537b0d5e5478e911397208d115dbd08e625adc3ff00bee569c4c02ce8bfa1d7"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
