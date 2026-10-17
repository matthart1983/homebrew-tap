class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.14.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.14.4/syswatch-macos-aarch64.tar.gz"
      sha256 "7b1665e7298ae0f3f3bfdf1f5473dc9a546dd87969db5619e2399312c5f0a00b"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.14.4/syswatch-macos-x86_64.tar.gz"
      sha256 "10de3d36f1a0fe6ee58a7221b9bec95724970bd1ec14a67a7049e8ddebfdce20"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.14.4/syswatch-linux-aarch64-static.tar.gz"
      sha256 "d5b2565aa8059b60f8769a6fe56472d6222be653ec0d0923585842a6c667bce6"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.14.4/syswatch-linux-x86_64-static.tar.gz"
      sha256 "45dda51b29c29439c1deeda24b768c4a6a01f7af342b6ca6504b165c974f9c1c"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
