class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.0/syswatch-macos-aarch64.tar.gz"
      sha256 "a409b13850f3d7042ab3e3eef862f847e6ed3732594fc8f61cf174ce7f8817c8"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.0/syswatch-macos-x86_64.tar.gz"
      sha256 "6807f88a2d2e5c7af94eb3cfbf4a1eb2f98b94aa5309706fe4a9d0e8f72aa8fe"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.0/syswatch-linux-aarch64-static.tar.gz"
      sha256 "954cf252d9ee472eb9d595f674c352a505716a6f9fdce1e007bd3f57bd0391fb"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.0/syswatch-linux-x86_64-static.tar.gz"
      sha256 "67425b00b984a1f2c7f2588ad26f80eea47606763bca725e76ddaf086031df83"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
