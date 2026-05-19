class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.16.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.16.2/netwatch-macos-aarch64.tar.gz"
      sha256 "fb456ac9dbeeb20587d8974c0d7a3b7d108478eeee9817be4c05e8ac12e3cbfe"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.16.2/netwatch-macos-x86_64.tar.gz"
      sha256 "6f65c76b5cd85461db69f60714449aaf2f7d79ccfa53c88c934279417571ae3c"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.16.2/netwatch-linux-aarch64-static.tar.gz"
      sha256 "7be5dc5191add5d72f30ef386fe2823bab02b58dc9848d222fa28e09153d81c9"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.16.2/netwatch-linux-x86_64-static.tar.gz"
      sha256 "cb258cd802aca77169bfa63ceaf9f8e69dbfa17cd66ead97e881cbbe108a12d2"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
