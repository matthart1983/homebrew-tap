class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.9.0/syswatch-macos-aarch64.tar.gz"
      sha256 "c9f4bc850394cdf4edcd47d4439fde9ad4527b24bbaeb846138f8e9a2f629316"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.9.0/syswatch-macos-x86_64.tar.gz"
      sha256 "9672e7e72997ed187b9a44f9a688d543cd3110e46819c0ff73f6d2b970a81e91"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.9.0/syswatch-linux-aarch64-static.tar.gz"
      sha256 "6ccd539c70c7a81089cfb6289107490321a6f0497316096873a4674adb9619bb"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.9.0/syswatch-linux-x86_64-static.tar.gz"
      sha256 "0743211daead3444afcb01932db55bd7374bb4d287d976e4a19a6bbfec048068"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
