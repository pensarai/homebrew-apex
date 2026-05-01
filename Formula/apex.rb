class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "1.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v1.8.0/pensar-darwin-arm64.tar.gz"
      sha256 "e14eb994b8cafa7b8e7e272c4445c747e6e552f7afa9c9b1470ad72d37a775d4"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v1.8.0/pensar-darwin-x64.tar.gz"
      sha256 "5d0a9b812800fcb6553861e3f69a890b04d4c629df172af2f6ab5cd324816cb2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v1.8.0/pensar-linux-x64.tar.gz"
      sha256 "267efa2499eef9f4a46373ea9352f80e97484af6c1b161e63925ea67fad62566"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
