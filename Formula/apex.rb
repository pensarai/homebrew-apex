class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.107"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.107/pensar-darwin-arm64.tar.gz"
      sha256 "f695678540ead491cb9b504f0e0026b90e43532ff6fb6a3109864de7daaddde4"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.107/pensar-darwin-x64.tar.gz"
      sha256 "5f716fa6b51464e04cfbdbfba87253acd7a2f1c9e4c6526df76af89b3ea6de47"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.107/pensar-linux-x64.tar.gz"
      sha256 "5c66b40b8ff244dbf2b2cbaa40df67d7d1d523af9f3cdeeaa213cd8cbc94087f"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
