class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.15.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.11/netwatch-macos-aarch64.tar.gz"
      sha256 "87570c06c9782f11586bbb27a449d931abd81a6c19ab5d68d8a81c29193456fe"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.11/netwatch-macos-x86_64.tar.gz"
      sha256 "fad2bc46a3bb512eb30a5a2d32729c985c68bca13857f97409beb8add24e046a"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.11/netwatch-linux-aarch64-static.tar.gz"
      sha256 "dd83202cd3f536a432c5d470ec28b47186ec56c086e825ed787d95e42d7f88ab"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.11/netwatch-linux-x86_64-static.tar.gz"
      sha256 "572d8b8d5fa346fce54b5eddf468256dbe14bde391d6e83312d6fb2a105241b2"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
