class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.11.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.11.2/netwatch-macos-aarch64.tar.gz"
      sha256 "e9a8e4aa4184814d2593fc50a223ff8ddb39e54d1852367b59863b6e441a206a"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.11.2/netwatch-macos-x86_64.tar.gz"
      sha256 "48ab99032e6d6d4e7254f838a480e6b7d352c9447b3fa001ad08a5d83304f6c6"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.11.2/netwatch-linux-aarch64-static.tar.gz"
      sha256 "80db2d9c272f2cbdbfc57ec51ce0d46dd5f6ed30575577296c900ee03f6bfa38"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.11.2/netwatch-linux-x86_64-static.tar.gz"
      sha256 "b8e021f1b091e09d2bce93e195dbea0a6b741fac36efa9ed938bc0b25e525593"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
