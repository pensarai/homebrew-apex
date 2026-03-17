class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.100"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.100/pensar-darwin-arm64.tar.gz"
      sha256 "3ff227ecade8ba5a71e5339446a7fddab571366a0e59acd6025d97b0a3042230"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.100/pensar-darwin-x64.tar.gz"
      sha256 "daf779bda58be8c94aad938c072175575754363a858bacbed09eb0b39e5eb572"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.100/pensar-linux-x64.tar.gz"
      sha256 "0c34b2a1fdbf59c4913da0962174cd5ea7bcec977f332f1d00352339e536c3e9"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
