class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.2.1/syswatch-macos-aarch64.tar.gz"
      sha256 "3ce5a9b2accd2f17ec4e2473796852e560490be91482890160530cca444d5130"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.2.1/syswatch-macos-x86_64.tar.gz"
      sha256 "8089c2d4eae9ac294e07ac10df0bbb4c9f71eaa6dd14937f19f43a2b0103761f"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.2.1/syswatch-linux-aarch64-static.tar.gz"
      sha256 "0ebc1af4e6f4267002b723c89576e12b51790dcae71c927e5203877dc11405a0"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.2.1/syswatch-linux-x86_64-static.tar.gz"
      sha256 "d0f9c712f4504705a4a24d8566c4de9f250245a1c29abd7e821eae6c16987521"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
