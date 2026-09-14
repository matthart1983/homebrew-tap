class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.31.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.31.4/netwatch-macos-aarch64.tar.gz"
      sha256 "0cc15743fe641a79999fd40d8d3eb0bad725e70ee292315af857257d72c8858f"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.31.4/netwatch-macos-x86_64.tar.gz"
      sha256 "3c3268b3417562cb3e4e74ac3a7385598ff174ab17492bc1cab615ff813144d0"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.31.4/netwatch-linux-aarch64.tar.gz"
      sha256 "b336642b93a9b32f591792f337c332272305829c2052eefee1657e7e6a8300a2"

      def install
        bin.install "netwatch-linux-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.31.4/netwatch-linux-x86_64.tar.gz"
      sha256 "42b3d7315b73510c993fbf64f9ebb28ffc113533168e996038bf588de2b744d2"

      def install
        bin.install "netwatch-linux-x86_64" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
