class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v1.2.0/pensar-darwin-arm64.tar.gz"
      sha256 "da6dfc248ccc2fc0083ce173d7bbf57793b9f6efd25e63f3d70279b968187714"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v1.2.0/pensar-darwin-x64.tar.gz"
      sha256 "59cbdf4ca7450d6ca8006588eaedc1069a13beee0e71029b707b28160e2aa5b0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v1.2.0/pensar-linux-x64.tar.gz"
      sha256 "ae3ce0f8ee69b1cf86c4e05cbe7b29f2522e8901e18c22b2dad034429b1eec43"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
