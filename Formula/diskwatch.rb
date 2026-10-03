class Diskwatch < Formula
  desc "Single-host disk diagnostics TUI — sibling to netwatch and syswatch"
  homepage "https://github.com/matthart1983/diskwatch"
  version "0.5.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.9/diskwatch-macos-aarch64.tar.gz"
      sha256 "a0c5e73d823b1fd5e58831ac0408a780e8c81cb34319131c510d08fb47ff887a"

      def install
        bin.install "diskwatch-macos-aarch64" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.9/diskwatch-macos-x86_64.tar.gz"
      sha256 "f31a47981301a2f49cfea1a547d5eb52ab3ae3af37ac6cb2097c77feb6dc5111"

      def install
        bin.install "diskwatch-macos-x86_64" => "diskwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.9/diskwatch-linux-aarch64-static.tar.gz"
      sha256 "3e0e0e818ebbb13dab2189984900af2cee3f153a573c3f19e96e8574fb7aedc9"

      def install
        bin.install "diskwatch-linux-aarch64-static" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.9/diskwatch-linux-x86_64-static.tar.gz"
      sha256 "be4c534631b937831d4b0a933b4830c161e9a335d77dcc9ae826736afe241b39"

      def install
        bin.install "diskwatch-linux-x86_64-static" => "diskwatch"
      end
    end
  end

  test do
    assert_match "diskwatch", shell_output("#{bin}/diskwatch --help 2>&1", 1)
  end
end
