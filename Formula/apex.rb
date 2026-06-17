class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v2.0.0/pensar-darwin-arm64.tar.gz"
      sha256 "fe222cea2d352f2b615bc289470f80f98ffd6a88ec5bcdc6e79bfc67360c68bd"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v2.0.0/pensar-darwin-x64.tar.gz"
      sha256 "f3cd036b0061b7e676ee66bad58cb562b683341f9fc60164ea350e3204fe92fd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v2.0.0/pensar-linux-x64.tar.gz"
      sha256 "f2bc1859ab060264a3cd354b954fa649500c8229a4833b18d772458f2cc93ae8"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
