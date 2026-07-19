class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.7.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.4/syswatch-macos-aarch64.tar.gz"
      sha256 "d1b48f35bb133e88f8f4d82ea8ea453640faffaaa96f4b318ce732b065c83e05"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.4/syswatch-macos-x86_64.tar.gz"
      sha256 "aa6a6c95d30f261e9f91b1b8e0a37efc6ae8d197104ff247b0b9b36b455c3e32"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.4/syswatch-linux-aarch64-static.tar.gz"
      sha256 "e8b74035f5bbd32fa999994b08113834f050e83ef7fb55471a4d2b00c5517415"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.4/syswatch-linux-x86_64-static.tar.gz"
      sha256 "34e9c88d1caa51552a664476ee14580f404521cf606d4a48fe3db7452e06d6f8"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
