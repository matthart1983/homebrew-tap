class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.14.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.14.5/syswatch-macos-aarch64.tar.gz"
      sha256 "ca6492698cd56fa8bfd35f3b68a5661de626c2b6972563700791a735cf5e5290"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.14.5/syswatch-macos-x86_64.tar.gz"
      sha256 "fe033fc6affe7c26fe7efb07a9ebbb417138de6a527dcf5af00779bc5fa95fa2"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.14.5/syswatch-linux-aarch64-static.tar.gz"
      sha256 "dbb42cb5f7a81745669df949750aa7cb7bdbd9eba5f9e4729d43355806b74f09"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.14.5/syswatch-linux-x86_64-static.tar.gz"
      sha256 "19226bf342dfc05aeddebd275207ab9c73942a57014e9b3ffc124f46bdfcdb3e"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1")
  end
end
