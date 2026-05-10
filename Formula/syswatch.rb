class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.4.3/syswatch-macos-aarch64.tar.gz"
      sha256 "5d9709676da1ae83e8fa256e79e218aad5e8d1ea00a104320c89bfe747bf44a1"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.4.3/syswatch-macos-x86_64.tar.gz"
      sha256 "892249c8c8ce8df9076a87e2fea4f83d7817976f1bf25f93af6b62594597e743"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.4.3/syswatch-linux-aarch64-static.tar.gz"
      sha256 "4128cff1d711d3e4c2fae003d436429b7ed6f85f289d9bb9e5a09100e7587f70"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.4.3/syswatch-linux-x86_64-static.tar.gz"
      sha256 "7dcecbd6d124c4c420281fdb1a8fd68e7dab1d3954a9e423230e3a1992fe674f"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
