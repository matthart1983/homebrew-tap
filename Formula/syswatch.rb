class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.7.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.7/syswatch-macos-aarch64.tar.gz"
      sha256 "2dfed1b40e659231bc91189dd9300803dc58251a31c28f01c13f5470dd26ccda"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.7/syswatch-macos-x86_64.tar.gz"
      sha256 "3086ce99bbb005b083249698f62a26f2717afdf19cc320b563777a50eeec2ff4"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.7/syswatch-linux-aarch64-static.tar.gz"
      sha256 "ec5bbdf87bfada9498fde089748dfc7729f394dccff75bc9d0d9edae6fd05a7d"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.7/syswatch-linux-x86_64-static.tar.gz"
      sha256 "13f763f28f614f85e20746ef7d4d6ae0829d874baf8da35e674915ae3586d094"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
