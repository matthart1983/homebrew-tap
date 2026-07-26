class Diskwatch < Formula
  desc "Single-host disk diagnostics TUI — sibling to netwatch and syswatch"
  homepage "https://github.com/matthart1983/diskwatch"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.1.5/diskwatch-macos-aarch64.tar.gz"
      sha256 "c4252773c19f980685cf88cdebae590dd97b783be96b52938d1addd08c3507b5"

      def install
        bin.install "diskwatch-macos-aarch64" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.1.5/diskwatch-macos-x86_64.tar.gz"
      sha256 "9205ed39418e8b185b2ea87b3048d72dcd8573cdb98ad29c0d34fd8ba234b165"

      def install
        bin.install "diskwatch-macos-x86_64" => "diskwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.1.5/diskwatch-linux-aarch64-static.tar.gz"
      sha256 "d76fc26f0a59a2700ce6d789a5c866d17227e7cc2e6f8209cef54c4b8df7543e"

      def install
        bin.install "diskwatch-linux-aarch64-static" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.1.5/diskwatch-linux-x86_64-static.tar.gz"
      sha256 "83ffe8040ab7e3ae99c06ee0c4f9dacf6288d54967f9786f295ab10887a8b051"

      def install
        bin.install "diskwatch-linux-x86_64-static" => "diskwatch"
      end
    end
  end

  test do
    assert_match "diskwatch", shell_output("#{bin}/diskwatch --help 2>&1", 1)
  end
end
