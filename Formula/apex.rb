class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.97"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.97/pensar-darwin-arm64.tar.gz"
      sha256 "a9ee982a606317be0ccc2b80bcc3e68f029d6a438c1822fbb1409ec30eeb4a72"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.97/pensar-darwin-x64.tar.gz"
      sha256 "1f199dbe01a902a74976eeddfe438a95fb421445920c9bbe38c2c551a5abc6f6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.97/pensar-linux-x64.tar.gz"
      sha256 "848a37503e8214864403f5a3c7bbf7db12f4419c81dfa77e06217bca4b90a73f"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
