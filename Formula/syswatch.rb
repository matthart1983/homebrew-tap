class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.2.2/syswatch-macos-aarch64.tar.gz"
      sha256 "48657f0da152effa42d16390301df717cf0f5fc867a30b8687d65fc4447044a2"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.2.2/syswatch-macos-x86_64.tar.gz"
      sha256 "3731da12265b841ab2e846cfb1e45b664359a64611da2a95d6bb0dcadd74b34c"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.2.2/syswatch-linux-aarch64-static.tar.gz"
      sha256 "c4c218fdcea6aea6cfa3650c6f0a38f6d697106e79dbf6fa266745a503c536ee"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.2.2/syswatch-linux-x86_64-static.tar.gz"
      sha256 "d22b37f089bb88f65d72184dece9dd603d39c2cc0383ee367ff525bf3f132ae3"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
