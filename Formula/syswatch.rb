class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.10.0/syswatch-macos-aarch64.tar.gz"
      sha256 "c5d7845970daad4577408404e5792168f23f8f3d4004a7dd65f509d3a692d0a9"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.10.0/syswatch-macos-x86_64.tar.gz"
      sha256 "334b1edc31fc288195338a1eca5ca831fea77bdee7c6acf6f4771c2e43a48798"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.10.0/syswatch-linux-aarch64-static.tar.gz"
      sha256 "9b18e578d7c7a5c4303c90d09badd7eb9b0e1abebe8a81f8ad1cd794959be35d"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.10.0/syswatch-linux-x86_64-static.tar.gz"
      sha256 "147a34eed88fd834bdc4a080d2a44df5dccadfc93ac7136e49aa2cc4a3316024"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
