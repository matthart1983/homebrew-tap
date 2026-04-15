class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.11.1/netwatch-macos-aarch64.tar.gz"
      sha256 "52a757c6b0a0a61ce9063d739f71966a77d9544178bf2195e1e33698efc2b529"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.11.1/netwatch-macos-x86_64.tar.gz"
      sha256 "5d1d9435d841fcc008dd38e42865249b48195500d41b0fad2858e67cfea4c532"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.11.1/netwatch-linux-aarch64-static.tar.gz"
      sha256 "6f4dca1dd4e6a689164154450301f8f025f3ff0c4f4d9829c0b5d9d94d7c49fe"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.11.1/netwatch-linux-x86_64-static.tar.gz"
      sha256 "ce3ea291ad9e164dc1432177f452d83fff1744a449d0c245b7036b68b5d17f19"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
