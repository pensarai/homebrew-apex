class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "2.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v2.3.0/pensar-darwin-arm64.tar.gz"
      sha256 "a0f0fa8d20fd37781d1598989f3e200359a4077992929f13f237229dc7a1cf20"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v2.3.0/pensar-darwin-x64.tar.gz"
      sha256 "27c3350e35ae519a0626ea4c61136c2c70186adb7149e74025b48c3ce1cfde82"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v2.3.0/pensar-linux-x64.tar.gz"
      sha256 "22f033468593de39381d7d11e3f86d82a0d8715fed21d58d5059d4ab0997f454"
    end
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v2.3.0/pensar-linux-arm64.tar.gz"
      sha256 "d9296bb5e00cd79997bc783f87ab8a94c3e489c3b41c134b1a1e89de451c8736"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
