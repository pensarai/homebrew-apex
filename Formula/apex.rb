class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "2.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v2.1.2/pensar-darwin-arm64.tar.gz"
      sha256 "a05087eda15092372b7fa0f9f49de7c58ed2e05b0e2b97dc154826f757830429"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v2.1.2/pensar-darwin-x64.tar.gz"
      sha256 "b8eab21534d80e47e1d5ffeb3a9e58d039bfcf905d098d02713a790c2d38db4e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v2.1.2/pensar-linux-x64.tar.gz"
      sha256 "dcc706faaff33dc0d9615b9f9579dc436efff446c1a505773263fd7ae7455fd0"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
