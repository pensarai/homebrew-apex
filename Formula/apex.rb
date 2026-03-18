class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.111"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.111/pensar-darwin-arm64.tar.gz"
      sha256 "1d5a11915003095fd5a2fa8daa76443971073e814ba95d76ceb45447902b3b09"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.111/pensar-darwin-x64.tar.gz"
      sha256 "75a2495d534faa5e9fe0c478ab5b3190e81506bc2acc7fcd340ab22beb34d171"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.111/pensar-linux-x64.tar.gz"
      sha256 "5d5c9b49babfd64eaa2759a1020c300914d1e684066ebb830ef42339c78c8b72"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
