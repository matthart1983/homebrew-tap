class Diskwatch < Formula
  desc "Single-host disk diagnostics TUI — sibling to netwatch and syswatch"
  homepage "https://github.com/matthart1983/diskwatch"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.1.1/diskwatch-macos-aarch64.tar.gz"
      sha256 "86295f4053fa16666001db9e8bd6abec92a498dc040a128275f1d13dbbc304cb"

      def install
        bin.install "diskwatch-macos-aarch64" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.1.1/diskwatch-macos-x86_64.tar.gz"
      sha256 "4105d802a6313b9083b33f229077261fcb09202ad90e317736a2fb63fcd3fd3b"

      def install
        bin.install "diskwatch-macos-x86_64" => "diskwatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.1.1/diskwatch-linux-aarch64-static.tar.gz"
      sha256 "f1634d627b0f52b6a180c7b36bac1e130e849b69cd3e37e8588410eb009475d9"

      def install
        bin.install "diskwatch-linux-aarch64-static" => "diskwatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/diskwatch/releases/download/v0.1.1/diskwatch-linux-x86_64-static.tar.gz"
      sha256 "f08eb63f85228e0833ccc13f82b9c7be456ea3b4fabd722bab5836a09c6173d0"

      def install
        bin.install "diskwatch-linux-x86_64-static" => "diskwatch"
      end
    end
  end

  test do
    assert_match "diskwatch", shell_output("#{bin}/diskwatch --help 2>&1", 1)
  end
end
