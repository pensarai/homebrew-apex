class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "1.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v1.8.1/pensar-darwin-arm64.tar.gz"
      sha256 "b98f723618b8dbfa05f02a115fe8db815f7d0a579f7638a0ac36aaa972052758"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v1.8.1/pensar-darwin-x64.tar.gz"
      sha256 "55542b52218b3be913e0155e5cac368d4f5604b19000de15d97319597a8d6623"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v1.8.1/pensar-linux-x64.tar.gz"
      sha256 "848ca30fbc68535c04c1fc433d291dd900a1f06f5f071cfbf6b4f7717a0c4956"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
