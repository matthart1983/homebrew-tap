class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.16.0/netwatch-macos-aarch64.tar.gz"
      sha256 "c6cc68dfeee408329bec241ab8b1970887939581512d0e01170018cc0de880eb"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.16.0/netwatch-macos-x86_64.tar.gz"
      sha256 "1c331a774d840556be23dea410ac613c2149f2e481962a62f9584e751b553b88"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.16.0/netwatch-linux-aarch64-static.tar.gz"
      sha256 "2bfa0b732b7181a92e7c3b75f8f629b6f8d832eb630b50d67bbfeba6a70a2597"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.16.0/netwatch-linux-x86_64-static.tar.gz"
      sha256 "95a5381962dda9a60f329caed2e93d795b6aa1cd9b81557989aacec8b9abd239"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
