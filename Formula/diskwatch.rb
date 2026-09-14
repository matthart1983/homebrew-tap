class Diskwatch < Formula
  desc "Single-host disk diagnostics TUI — sibling to netwatch and syswatch"
  homepage "https://github.com/matthart1983/diskwatch"
  version "0.5.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.7/diskwatch-macos-aarch64.tar.gz"
      sha256 "144df75ad0510ec3113c627c472f35c9e0e9326108e8064aeee2e42e733eb35f"

      def install
        bin.install "diskwatch-macos-aarch64" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.7/diskwatch-macos-x86_64.tar.gz"
      sha256 "81b1222fa2e53eb36c82f13bde453c312c2b85c4738e998fc18e42fd92af5972"

      def install
        bin.install "diskwatch-macos-x86_64" => "diskwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.7/diskwatch-linux-aarch64-static.tar.gz"
      sha256 "c4cbf3fb886c76c2efc92b08daf8f4b686974d6d19f4eef5edfb9bbf2d8ff4c9"

      def install
        bin.install "diskwatch-linux-aarch64-static" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.7/diskwatch-linux-x86_64-static.tar.gz"
      sha256 "bfb13c6e1bdf8da70403208d4c1a8194af8eba78ccc368530bad5a94a726b584"

      def install
        bin.install "diskwatch-linux-x86_64-static" => "diskwatch"
      end
    end
  end

  test do
    assert_match "diskwatch", shell_output("#{bin}/diskwatch --help 2>&1", 1)
  end
end
