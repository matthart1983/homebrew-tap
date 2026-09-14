class Syswatch < Formula
  desc "Single-host system diagnostics TUI — sibling to netwatch"
  homepage "https://github.com/matthart1983/syswatch"
  version "0.14.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.14.2/syswatch-macos-aarch64.tar.gz"
      sha256 "a8bf271491476d7fbcc9d26290df2bbf6eeaa55be8afe827f702315078a267da"

      def install
        bin.install "syswatch-macos-aarch64" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.14.2/syswatch-macos-x86_64.tar.gz"
      sha256 "29bd67fdb6e77081b2f08a02a89e391843ffba00ebdf76acb38531221374033b"

      def install
        bin.install "syswatch-macos-x86_64" => "syswatch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.14.2/syswatch-linux-aarch64-static.tar.gz"
      sha256 "74c145450549143987ed81529b965ce824ed2d3c27c56d2562329364446bdd33"

      def install
        bin.install "syswatch-linux-aarch64-static" => "syswatch"
      end
    end
    on_intel do
      url "https://github.com/matthart1983/syswatch/releases/download/v0.14.2/syswatch-linux-x86_64-static.tar.gz"
      sha256 "d33eb12c1662a255c404d42ee7c9e804934f29aacee3f0de1f0d73f84c96d491"

      def install
        bin.install "syswatch-linux-x86_64-static" => "syswatch"
      end
    end
  end

  test do
    assert_match "syswatch", shell_output("#{bin}/syswatch --help 2>&1", 1)
  end
end
