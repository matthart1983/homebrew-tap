class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.7.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.3/syswatch-macos-aarch64.tar.gz"
      sha256 "d5c4e704cda223226fd55630fc0d7080c69d1eaa3e92e91389747d9dc33bdff5"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.3/syswatch-macos-x86_64.tar.gz"
      sha256 "995073ed99412c48bb8c994ec7d130125fb3ff00f303b0018c261e8b8b75423c"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.3/syswatch-linux-aarch64-static.tar.gz"
      sha256 "c33eb38b41becc341db6ae3cdfc74ec13dc965462be7a25e7a828facf78caff1"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.3/syswatch-linux-x86_64-static.tar.gz"
      sha256 "d4d618f999545582028e1e0e463b131df86498bec3be7ebe23ddcef76b297fd5"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
