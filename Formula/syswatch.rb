class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.3.1/syswatch-macos-aarch64.tar.gz"
      sha256 "30e2b7bacdcaf5ef969b67dd88b1e2ec4ba8934c55cb7a8e68c3f0b55ed431e8"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.3.1/syswatch-macos-x86_64.tar.gz"
      sha256 "c4c5704ba682ddaff5cca2f8b333a403bd607552577be6ba17b2e90f48fb6fa3"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.3.1/syswatch-linux-aarch64-static.tar.gz"
      sha256 "da3c2119623107c6be76bbff4d300cd699148a4447a162df863c4bdcdf70d869"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.3.1/syswatch-linux-x86_64-static.tar.gz"
      sha256 "488e9e5e01549d31390c4946c4f2eda7e8eaab5f7c49a66508257e9b4da9d5e3"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
