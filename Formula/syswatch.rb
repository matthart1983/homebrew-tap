class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.14.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.14.5/syswatch-macos-aarch64.tar.gz"
      sha256 "6ef514e21eaa03ed084d955a8d23f14a8899706bd0e7761842eee5e0dcfe6f05"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.14.5/syswatch-macos-x86_64.tar.gz"
      sha256 "421a3e5565501bb41bea60fb886aad76cbd480fa1c7cff17cfbc3940828460a4"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.14.5/syswatch-linux-aarch64-static.tar.gz"
      sha256 "3a559aaa3697526703bc8a51998a82128345fd9351739fde0cc9a86b409291bb"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.14.5/syswatch-linux-x86_64-static.tar.gz"
      sha256 "795dd126e073771edb4230ec20a0991d83badb6e9910c7c3ef1741b77d3e988c"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1")
  end
end
