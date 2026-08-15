class Diskwatch < Formula
  desc "Single-host disk diagnostics TUI — sibling to netwatch and syswatch"
  homepage "https://github.com/matthart1983/diskwatch"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.2.1/diskwatch-macos-aarch64.tar.gz"
      sha256 "3a5ac8e806f001f9814aa73f022b8fbb2e8ea9e3bfe652443ecbec8314b09d56"

      def install
        bin.install "diskwatch-macos-aarch64" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.2.1/diskwatch-macos-x86_64.tar.gz"
      sha256 "d5bdfe53193260ea073557020ea4dc0dfab908eece89a2295fbc303ec19a8d2e"

      def install
        bin.install "diskwatch-macos-x86_64" => "diskwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.2.1/diskwatch-linux-aarch64-static.tar.gz"
      sha256 "a688e3d6e83680caeca9588153100aa1a69ff9bdcada44111ba55bd00c3ee918"

      def install
        bin.install "diskwatch-linux-aarch64-static" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.2.1/diskwatch-linux-x86_64-static.tar.gz"
      sha256 "c3a4f9e1b0b7a56adef009a6b71171b75362beb266b6e16deda991a087613385"

      def install
        bin.install "diskwatch-linux-x86_64-static" => "diskwatch"
      end
    end
  end

  test do
    assert_match "diskwatch", shell_output("#{bin}/diskwatch --help 2>&1", 1)
  end
end
