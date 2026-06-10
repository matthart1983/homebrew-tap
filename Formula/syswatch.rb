class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.2/syswatch-macos-aarch64.tar.gz"
      sha256 "9fbbbe4421ff171d3561e2ebac2543a690c5c5d5b412500b44e6d4df60f10259"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.2/syswatch-macos-x86_64.tar.gz"
      sha256 "a4f17ffd8430909e3551e727a5a42ece93644e676b1dff6a1b67c5b902a26412"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.2/syswatch-linux-aarch64-static.tar.gz"
      sha256 "daad411fce6cc980fd6fd0ec1fe98cd15390c2ff8464c4ea91f60c4b0088d746"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.2/syswatch-linux-x86_64-static.tar.gz"
      sha256 "f71bee170c93ab8e026c7ee26704cf2aeb427d1063e4f7da0f73e65d34e29bb7"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
