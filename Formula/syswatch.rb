class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.12.0/syswatch-macos-aarch64.tar.gz"
      sha256 "58d5feec4e2119b62027a161f6ac25233c138357c4febb6f886921031f83663d"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.12.0/syswatch-macos-x86_64.tar.gz"
      sha256 "f31d3c0f24e97cffa4288149a7361cb7b14043492e704788b58b0b9425b4342e"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.12.0/syswatch-linux-aarch64-static.tar.gz"
      sha256 "a918140e177358fb34aabcc18e52de877fa89252ec096dfdc57fa369bd8c0696"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.12.0/syswatch-linux-x86_64-static.tar.gz"
      sha256 "d16f95fb3adef367150f51c6e35b7ac1a42999dc342933902f451b4d0f6512ea"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
