class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.15.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.4/netwatch-macos-aarch64.tar.gz"
      sha256 "f7e00613bc6e60de4d8045032442771f15f93e2136eb352f750138db195186fb"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.4/netwatch-macos-x86_64.tar.gz"
      sha256 "2a0c101f841fee1658f0621828ac58ea84159c500a36652e1d808938cb0c443c"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.4/netwatch-linux-aarch64-static.tar.gz"
      sha256 "ea1542ecc3c62142f1ad2d75971607a07334d46be105edd546820f06c0157bfd"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.4/netwatch-linux-x86_64-static.tar.gz"
      sha256 "73bb88f6211aabcccc6d62230a57b512731757db49881e24f3d0c8ebf392c901"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
