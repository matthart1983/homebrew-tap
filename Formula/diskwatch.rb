class Diskwatch < Formula
  desc "Single-host disk diagnostics TUI — sibling to netwatch and syswatch"
  homepage "https://github.com/matthart1983/diskwatch"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.4.0/diskwatch-macos-aarch64.tar.gz"
      sha256 "d6c8c772ce89680c02de1996b67bc5f2fa26e34d72766481ccc63fa3412a8c72"

      def install
        bin.install "diskwatch-macos-aarch64" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.4.0/diskwatch-macos-x86_64.tar.gz"
      sha256 "aa8728ffe2c771000487ce13b300688bc9694a2199aef83f3e75f2e08a8edd86"

      def install
        bin.install "diskwatch-macos-x86_64" => "diskwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.4.0/diskwatch-linux-aarch64-static.tar.gz"
      sha256 "c6e74555402e83aa287269c59f4db249b47af7fad4ed3d7bd2d6f3cc37a863ff"

      def install
        bin.install "diskwatch-linux-aarch64-static" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.4.0/diskwatch-linux-x86_64-static.tar.gz"
      sha256 "a1e0833af656ca01108b18d53027ca8ce84696a2dfbc719798081ef88618530b"

      def install
        bin.install "diskwatch-linux-x86_64-static" => "diskwatch"
      end
    end
  end

  test do
    assert_match "diskwatch", shell_output("#{bin}/diskwatch --help 2>&1", 1)
  end
end
