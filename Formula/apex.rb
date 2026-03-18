class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.112"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.112/pensar-darwin-arm64.tar.gz"
      sha256 "72434322cb588a07781bb63d05f818cb3a175ea6083f87b04602e9d10e61e9c4"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.112/pensar-darwin-x64.tar.gz"
      sha256 "d4c247be758b0d3168ceeba39c9af7ca206f4d9a022b55e25a293ff990eacce0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.112/pensar-linux-x64.tar.gz"
      sha256 "4515ad0ad6c3099ed0c782e17a8e5c1db7f8900ccde3233c8bf6e91ea9803c82"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
