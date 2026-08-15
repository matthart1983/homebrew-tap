class Diskwatch < Formula
  desc "Single-host disk diagnostics TUI — sibling to netwatch and syswatch"
  homepage "https://github.com/matthart1983/diskwatch"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.3.0/diskwatch-macos-aarch64.tar.gz"
      sha256 "82087800fa3a2a4ca306c1c0b354b56a2043cf22f96e839b84a617ba7b67df36"

      def install
        bin.install "diskwatch-macos-aarch64" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.3.0/diskwatch-macos-x86_64.tar.gz"
      sha256 "cb89f6a384f7ba9a5c6ee2963b684e7c29d7bb446349c42df261b07d86d896b8"

      def install
        bin.install "diskwatch-macos-x86_64" => "diskwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.3.0/diskwatch-linux-aarch64-static.tar.gz"
      sha256 "b18363a74fc31e4d0b9068956a1c7ec068e04c2966a7b8c705c1ed01a8e031c7"

      def install
        bin.install "diskwatch-linux-aarch64-static" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.3.0/diskwatch-linux-x86_64-static.tar.gz"
      sha256 "dd6a474ae800d02639656f511cfb81fa8338a48eca1abed421cc65d8910fd282"

      def install
        bin.install "diskwatch-linux-x86_64-static" => "diskwatch"
      end
    end
  end

  test do
    assert_match "diskwatch", shell_output("#{bin}/diskwatch --help 2>&1", 1)
  end
end
