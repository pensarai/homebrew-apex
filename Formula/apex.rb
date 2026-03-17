class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.104"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.104/pensar-darwin-arm64.tar.gz"
      sha256 "48968755e2846a0ab346e7ae1c1ae95ec396adff284be30690388840eeceb008"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.104/pensar-darwin-x64.tar.gz"
      sha256 "1771ce2eee47e61c55cb63c90ffd1778f616faabc38abf2b9d753d0dc3e877c6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.104/pensar-linux-x64.tar.gz"
      sha256 "987ebb814a9985bfc1e25ac5a75ecd6a2f3e74a10cb5dc98747ff1e9c67ddec3"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
