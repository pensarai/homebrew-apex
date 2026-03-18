class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.110"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.110/pensar-darwin-arm64.tar.gz"
      sha256 "dc02fe8cfd0faf4a40dc3c0bfbb3b48a2d58e4ed71693b4c4b51e742c889ad09"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.110/pensar-darwin-x64.tar.gz"
      sha256 "eb47d965740244420d2e373e68e609ab2afdea009f62984e72e4641bc89699dc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.110/pensar-linux-x64.tar.gz"
      sha256 "77f7603f78d8456be481a3536955bfdefb29aaa74c4c91720ffff8b4b6412f01"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
