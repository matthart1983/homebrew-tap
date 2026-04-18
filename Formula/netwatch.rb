class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.12.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.12.2/netwatch-macos-aarch64.tar.gz"
      sha256 "85976786c2729965d411eefeb5472e49a78c6a4ef0983e91cf104b0deb3619a7"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.12.2/netwatch-macos-x86_64.tar.gz"
      sha256 "fd93caad607eb8725fa833f2d588bf75d86b0bc3e84a1afbee828b5e88afb91e"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.12.2/netwatch-linux-aarch64-static.tar.gz"
      sha256 "9bd31b43af22a251cff892c712e7e6f27190a0f9dc1056a51e0f281946232aae"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.12.2/netwatch-linux-x86_64-static.tar.gz"
      sha256 "ce7ea9b081773fc0a017edb8ee6161d7578ea7c811d10eb677d3c0449151a525"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
