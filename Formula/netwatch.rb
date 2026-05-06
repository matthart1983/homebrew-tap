class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.15.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.2/netwatch-macos-aarch64.tar.gz"
      sha256 "ffe95e5eeb40d01beb7b5ac7a11fe6ae72bbc78df33bb638a2ed56209559a107"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.2/netwatch-macos-x86_64.tar.gz"
      sha256 "519722fbe0cb222f7dfa06d26db6f21b44b4f7468a73cb7092b1eb9a945fc330"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.2/netwatch-linux-aarch64-static.tar.gz"
      sha256 "56426d41743600c674a471308a351ff14fb53359e849e05c724c0baa245573cc"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.2/netwatch-linux-x86_64-static.tar.gz"
      sha256 "075d7379d8c2452b8539c742e0bb89d8ef8524979406877df47a555e801debc4"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
