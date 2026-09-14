class Diskwatch < Formula
  desc "Single-host disk diagnostics TUI — sibling to netwatch and syswatch"
  homepage "https://github.com/matthart1983/diskwatch"
  version "0.5.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.6/diskwatch-macos-aarch64.tar.gz"
      sha256 "f2de3f20b28785af2c4201ff177c9ab4d6f87b50b658d9a9091eccebedfdb09b"

      def install
        bin.install "diskwatch-macos-aarch64" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.6/diskwatch-macos-x86_64.tar.gz"
      sha256 "6c2287ef74ff2453892e43bcf53b3d799fcfb48fdd7b48b4f510a22a63d219a4"

      def install
        bin.install "diskwatch-macos-x86_64" => "diskwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.6/diskwatch-linux-aarch64-static.tar.gz"
      sha256 "b3ef0ab6471e038412496564c779004ea34254856f508365073fd019779c7d2c"

      def install
        bin.install "diskwatch-linux-aarch64-static" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.5.6/diskwatch-linux-x86_64-static.tar.gz"
      sha256 "633fc93858abdcf3ae06188aa10b694bc4e573fd3d3d096fa1407e629d7109e9"

      def install
        bin.install "diskwatch-linux-x86_64-static" => "diskwatch"
      end
    end
  end

  test do
    assert_match "diskwatch", shell_output("#{bin}/diskwatch --help 2>&1", 1)
  end
end
