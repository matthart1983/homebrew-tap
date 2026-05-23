class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.18.0/netwatch-macos-aarch64.tar.gz"
      sha256 "9a9599ee2d0cd9dd0c9bb6c101d86faf7ed898730583cdf502224cbfcf29af90"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.18.0/netwatch-macos-x86_64.tar.gz"
      sha256 "79ecc9d137779e4476c39af32d1677210a25557889b35c21ff850e03ee9d2ea3"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.18.0/netwatch-linux-aarch64-static.tar.gz"
      sha256 "761dd4f601c3627a135019cd39db93df558771ad6a8063c852d60754f185bf5d"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.18.0/netwatch-linux-x86_64-static.tar.gz"
      sha256 "0f88fbf61ecb2447cd5fea711a5114a68e0201e43d75d801b5e2f599ba2b21a2"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
