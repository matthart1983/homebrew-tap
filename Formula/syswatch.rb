class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.4.0/syswatch-macos-aarch64.tar.gz"
      sha256 "664b915fb41f17cea293f354fcc0e9be5f53e660c2092709d1a2f451d77b78b4"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.4.0/syswatch-macos-x86_64.tar.gz"
      sha256 "4eb15a08de9f53c3d07f0689e483cce3a20f78b01430d14097f26c2b27f6e077"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.4.0/syswatch-linux-aarch64-static.tar.gz"
      sha256 "011e999c816b45a8f3787ff434403081bcc61d417ab246039e4b85a2cb38cfc0"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.4.0/syswatch-linux-x86_64-static.tar.gz"
      sha256 "a3fd27f5bf29f8eaad49c081a6a341263d841ea3e4aae131f01e7bd710e508bd"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
