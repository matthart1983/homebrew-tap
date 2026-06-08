class Netwatch < Formula
  desc "Real-time network diagnostics in your terminal — zero config, instant visibility"
  homepage "https://github.com/matthart1983/netwatch"
  version "0.25.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.5/netwatch-macos-aarch64.tar.gz"
      sha256 "dd94ea125f7e4905306f7b57d9060e28a4830efaa49152d99c87c48d6071c79e"

      def install
        bin.install "netwatch-macos-aarch64" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.5/netwatch-macos-x86_64.tar.gz"
      sha256 "5d1a5056cac3abe9803196641f4465be7ccba049be3dbe16425a19f1b5d73d4c"

      def install
        bin.install "netwatch-macos-x86_64" => "netwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.5/netwatch-linux-aarch64-static.tar.gz"
      sha256 "990330009efd29f9e641ae9546627bcd3a3ca87b62e9748efbd2725fa7c0f716"

      def install
        bin.install "netwatch-linux-aarch64-static" => "netwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/netwatch/releases/download/v0.25.5/netwatch-linux-x86_64-static.tar.gz"
      sha256 "017f246774149315078cc9ae59732ff71ce7fc649fcf770adf3896e6b86653ef"

      def install
        bin.install "netwatch-linux-x86_64-static" => "netwatch"
      end
    end
  end

  test do
    assert_match "netwatch", shell_output("#{bin}/netwatch --help 2>&1", 1)
  end
end
