class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.14.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.14.1/syswatch-macos-aarch64.tar.gz"
      sha256 "25d656f19d563a924f74e15231186bb5b571550f9e89a798c0bd87358fce4a00"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.14.1/syswatch-macos-x86_64.tar.gz"
      sha256 "1f71c54d0b06010332f0bb0a3ccf335f0fd083d1e07d3e641fcb43a93d0f00c5"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.14.1/syswatch-linux-aarch64-static.tar.gz"
      sha256 "5e807009c286aa8a4788d6814404e12a013edb0a540d218cea2f43aef0cf2c84"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.14.1/syswatch-linux-x86_64-static.tar.gz"
      sha256 "7f91d3b6a8157e35c7e3b7bf42c4c7a63d2f417a824eee3aec7a84e2765cc49a"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
