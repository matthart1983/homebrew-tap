class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.14.0/syswatch-macos-aarch64.tar.gz"
      sha256 "692a0ecf4fd256c6845e2adc52707c69912c8f32ec5afb5f92e084ac96a7be9e"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.14.0/syswatch-macos-x86_64.tar.gz"
      sha256 "18f578e4d91ba7a008231ab4f1e1596350e287bcc3e29cb87b95df907c6eae9d"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.14.0/syswatch-linux-aarch64-static.tar.gz"
      sha256 "4008b8e7171382c46f100357b396314db7814d982eef340663d80c6684101df0"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.14.0/syswatch-linux-x86_64-static.tar.gz"
      sha256 "b9ef892d0880f1a2fb63473d57380380e5ad8c3b43fdcea6e90942272909b411"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
