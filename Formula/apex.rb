class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.105"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.105/pensar-darwin-arm64.tar.gz"
      sha256 "b57114685c397fb7c8e3190aad5933a15e8c7bd787417efc1e803ba3f0f2daf8"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.105/pensar-darwin-x64.tar.gz"
      sha256 "45141f0b624b620095f5ad90b710c8844e1e41ff493fa1b7aa1be4ce4bfaf298"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.105/pensar-linux-x64.tar.gz"
      sha256 "1018231f2eda2d028dbe115d79a6b37b2055b1064c5935f8a20e0401c0e67cf2"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
