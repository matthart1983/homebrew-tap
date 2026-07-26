class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.7.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.6/syswatch-macos-aarch64.tar.gz"
      sha256 "d68238a9cd7b78564be096434722732ba85d5644e4f8fd2aa919c5fe50c0aa98"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.6/syswatch-macos-x86_64.tar.gz"
      sha256 "5f4167e85424bd304be75e0c36103d89d049cf33cc766a8d0068ceba0d9ac968"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.6/syswatch-linux-aarch64-static.tar.gz"
      sha256 "2771083f29856013d61c36b4cc098581547208a1f6a3a95f5088c964bdb920a2"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.7.6/syswatch-linux-x86_64-static.tar.gz"
      sha256 "2248d69918b06ab4de471809bae10a176fad5f4790fb0967172c5eb6d99400cd"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
