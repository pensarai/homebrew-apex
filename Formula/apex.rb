class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.109"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.109/pensar-darwin-arm64.tar.gz"
      sha256 "aceed847cf4afcbac92b8c5d3e85aa67aa89ac357560544681742df0ee8cc229"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.109/pensar-darwin-x64.tar.gz"
      sha256 "95fbff22312124a6a3403a345ae601f6a58352849c5c2182e64e0b06f1351246"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.109/pensar-linux-x64.tar.gz"
      sha256 "7fef3b5566ed9512c124360a634e1f2cfce9d56fae6cd8ba3f0b405645ead256"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
