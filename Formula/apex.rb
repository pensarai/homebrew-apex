class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "1.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v1.7.0/pensar-darwin-arm64.tar.gz"
      sha256 "718d9df06013eff1d51fe5b0700ee9b9c0caded692e992dfc88656c9a22832fc"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v1.7.0/pensar-darwin-x64.tar.gz"
      sha256 "5b514c91a264d4139ae5a9024860a3b825d52a86857fe80f1d6509657f9100e2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v1.7.0/pensar-linux-x64.tar.gz"
      sha256 "ec8faaf98f6d0f24e23caef03a87592631decbb0a9d8e71e6633d1a298aace89"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
