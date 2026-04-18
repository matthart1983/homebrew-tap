class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.12.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.12.3/netwatch-macos-aarch64.tar.gz"
      sha256 "b5f3c99150f08fe275c9bddcafcf582f6aaadc2fab2a95031477e8a88dfcefcb"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.12.3/netwatch-macos-x86_64.tar.gz"
      sha256 "2bfd47fc5cd0d6ccd8060a38d95ed7e802be6924eb6c284439144600c650e169"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.12.3/netwatch-linux-aarch64-static.tar.gz"
      sha256 "a642fe61c2ba80d557340b757811efd845c01af493dd9f6fdf021b8a58aa0c7c"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.12.3/netwatch-linux-x86_64-static.tar.gz"
      sha256 "78e7a66950e253a63422f8737bc8100d5b5476533facd4e331ddbcdcbc86e99f"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
