class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.103"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.103/pensar-darwin-arm64.tar.gz"
      sha256 "0cc050d45b82e4df576079d9a60ccd9d8fd8f62861486d4db56b79c3847e9db6"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.103/pensar-darwin-x64.tar.gz"
      sha256 "2f7737c9e62cce6ff4ac6b1e0bb8333d0059ac80dff6ed2148d5ed3d5503cdf9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.103/pensar-linux-x64.tar.gz"
      sha256 "c76bf9983839974efe664f95c7f610524fd4a7ddd9e536f9494a1254569746ec"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
