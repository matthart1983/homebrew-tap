class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.32.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.32.0/netwatch-macos-aarch64.tar.gz"
      sha256 "66eeb128b6830afe61bf17e7692513325bf8a38f581babbd42017cd69273983c"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.32.0/netwatch-macos-x86_64.tar.gz"
      sha256 "7e094304cc56a6e6b49f4c05f019387879b5ab6bef3bfd49128e89da396ba0cb"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.32.0/netwatch-linux-aarch64.tar.gz"
      sha256 "5d99487d803d685a5b6849f047787e0fa4bccb359e230f0fa158d0076c24368d"

      def install
        bin.install "netwatch-linux-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.32.0/netwatch-linux-x86_64.tar.gz"
      sha256 "3fb47ab42538569b3fcbdc780f8846546453ae9be3fc78f1342f563bc1c9ac74"

      def install
        bin.install "netwatch-linux-x86_64" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
