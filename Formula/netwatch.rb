class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.14.0/netwatch-macos-aarch64.tar.gz"
      sha256 "d2c8f8704e62e454efea2e1c059343ef44f2ff408596a594f749bd1f309a4382"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.14.0/netwatch-macos-x86_64.tar.gz"
      sha256 "dc03914571487a17106f7ab2ce41fd8ad10125fdd408d584a8b2c0fb06e534e4"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.14.0/netwatch-linux-aarch64-static.tar.gz"
      sha256 "05be86d7e9dfe1146c79c2f517d9d946ecfeeceb59346f05a34439ac47e2615e"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.14.0/netwatch-linux-x86_64-static.tar.gz"
      sha256 "cbd81206ec350b93f6ef355e92b5298b79d2a8485288a531644d99ffcaf0e28f"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
