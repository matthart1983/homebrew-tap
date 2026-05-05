class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.2.0/syswatch-macos-aarch64.tar.gz"
      sha256 "bfd22389774b873705b0746f43eb470f7da37dab388e5e0f8b09d964335c2b78"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.2.0/syswatch-macos-x86_64.tar.gz"
      sha256 "061741f69158679d56b8dbb5eaad328005bd4b63e7f61fa2da9932f861f6ea7c"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.2.0/syswatch-linux-aarch64-static.tar.gz"
      sha256 "f00561c6282c0921ba5ad402459a678c7347bc5b189f15b5b71c90bd90736a56"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.2.0/syswatch-linux-x86_64-static.tar.gz"
      sha256 "01ea66aeacddda21007e19cb3fb79cc7e3b1de3e68f8b7547ff06bbe37a21401"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
