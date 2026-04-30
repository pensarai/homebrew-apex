class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v1.3.0/pensar-darwin-arm64.tar.gz"
      sha256 "cff02e724f5a2252b0118f3448000884a1edafed73ad8158d457290bbc430266"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v1.3.0/pensar-darwin-x64.tar.gz"
      sha256 "8142b79b8f2714f1ec16b68362e040c0c00041b616b95ea3cbbcda7e184afd79"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v1.3.0/pensar-linux-x64.tar.gz"
      sha256 "7365bb2ac36190c3d1d8c950238dd00eedf6f375cc946b3f465691040c410244"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
