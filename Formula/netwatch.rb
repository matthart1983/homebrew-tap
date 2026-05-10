class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.15.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.7/netwatch-macos-aarch64.tar.gz"
      sha256 "3d1e5715a95c92dd5a364a8d1ac52b78845769b8db32c78fa652f2297852573b"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.7/netwatch-macos-x86_64.tar.gz"
      sha256 "7b25efaf1f2d7e40cf57c8e8091b0a0df11a9b846290be1941e0cea1bd0094a8"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.7/netwatch-linux-aarch64-static.tar.gz"
      sha256 "bab67f3974a2de0c1e6244e3a2d010c1807da99e37e6cdc9770164daec5f02ef"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.15.7/netwatch-linux-x86_64-static.tar.gz"
      sha256 "126b278519bf32b93ac665fe38699df78e00c6c9d68b0bcb006dce19414713ae"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
