class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.24.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.24.0/netwatch-macos-aarch64.tar.gz"
      sha256 "d84c2edac2ae60ed502001e061842bfa5332e0cada8ec99d4168530d9fb81649"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.24.0/netwatch-macos-x86_64.tar.gz"
      sha256 "d189a4855d85e5f1ffda69fe3952f98f22cd1a6ca3f9effd36a174d19d35869a"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.24.0/netwatch-linux-aarch64-static.tar.gz"
      sha256 "5c2b5b8fbda280dbf736c6dc0f8b9522b43ed5c58ba803837a3c110866d2cc4f"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.24.0/netwatch-linux-x86_64-static.tar.gz"
      sha256 "4f31ea887e2919a6b17240450d0f634cfc9f3261cc91013c8ec06564bc1f18bc"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
