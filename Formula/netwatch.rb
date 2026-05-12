class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.15.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.10/netwatch-macos-aarch64.tar.gz"
      sha256 "041537187598324616fa07e81116d0ab836b41e58415f492f9a6f410c6582a80"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.10/netwatch-macos-x86_64.tar.gz"
      sha256 "6b37c6d29945c24f7afafb2897b8b45cce730a06b7793226c58be39fac278db1"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.10/netwatch-linux-aarch64-static.tar.gz"
      sha256 "fb9220e18df773ac5e4f5b049829ad0d4b784944e8e445cf52c82c70a25f0262"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.10/netwatch-linux-x86_64-static.tar.gz"
      sha256 "2f10503d7d2005df910dc206a525dc1e5a160ab2ef718d3ffadb225967275bdf"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
