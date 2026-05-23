class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.18.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.18.1/netwatch-macos-aarch64.tar.gz"
      sha256 "5e0086c3d9207d3ca99fa8b00ea3535acb2021555b0c0afa472c00ec3052213f"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.18.1/netwatch-macos-x86_64.tar.gz"
      sha256 "05ab1de946fca97eac340dbf0180faaca1694c6f919b35bb9378014b64d39b1d"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.18.1/netwatch-linux-aarch64-static.tar.gz"
      sha256 "ebcda97211e86cff9205d98849fd3542f8a20f11f504f006a9fa458f46add44c"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.18.1/netwatch-linux-x86_64-static.tar.gz"
      sha256 "39073af182b53faf9655e021bcae29ca676675ff4844bb79f8fc17edae2eb368"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
