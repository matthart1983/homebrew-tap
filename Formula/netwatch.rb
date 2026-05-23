class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.21.0/netwatch-macos-aarch64.tar.gz"
      sha256 "1d86aa0151386cf515efdc88d2b3ba6d48b948f873cba5537785a688c99a4038"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.21.0/netwatch-macos-x86_64.tar.gz"
      sha256 "746a3d528f4764312537dca11e50dd7cd98f93d8c8fe1335b44120de160ec184"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.21.0/netwatch-linux-aarch64-static.tar.gz"
      sha256 "862a19e33782af27c1f862dc470960a1e992399381f45e96a92d361e245a5e5b"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.21.0/netwatch-linux-x86_64-static.tar.gz"
      sha256 "fcf4180f39f9b332b3ab103f19e4ec55a1aae5a544126d4ee9e61ec3980a6b0b"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
