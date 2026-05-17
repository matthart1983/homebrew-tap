class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.15.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.12/netwatch-macos-aarch64.tar.gz"
      sha256 "853d1f9c8074f7b1781b73a27964d49f6997f4592b66af62242ae7d0ef9ab6ea"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.12/netwatch-macos-x86_64.tar.gz"
      sha256 "a3fe8ef5d0f3bf983f811cb4e67931520050899596ba1c0f73d15d561099703d"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.12/netwatch-linux-aarch64-static.tar.gz"
      sha256 "027f19115c95a619ef910523cc7f41ac6a73c009183213c5ec3b92415f8fe2f4"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.12/netwatch-linux-x86_64-static.tar.gz"
      sha256 "84d745108f1dc41fe64d091a263e0409545419cee0f6db1dfab0814f0b8c436d"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
