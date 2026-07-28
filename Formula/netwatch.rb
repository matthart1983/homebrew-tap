class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.28.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.28.1/netwatch-macos-aarch64.tar.gz"
      sha256 "4c9be15ca8ffd13f814674b8ca9839c94385cb935b314db1a5660861ea1640f9"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.28.1/netwatch-macos-x86_64.tar.gz"
      sha256 "035b178d1bafee876d0a890a43d35c4e0ff82fecbe1b567cfa69ebe3ec885305"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.28.1/netwatch-linux-aarch64-static.tar.gz"
      sha256 "20122d8d3e893b450a4489709db831b69d6ff45aab0b4d6267a0080a7bcd2d2d"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.28.1/netwatch-linux-x86_64-static.tar.gz"
      sha256 "4bc900f4ef4da134602e74daa5fd97c2d9b5c61bd771b1d6bf45a9378dd611d1"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
