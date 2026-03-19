class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.114"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.114/pensar-darwin-arm64.tar.gz"
      sha256 "35037a23c2b7fb3e0b3ea26d24291af19c604ca7c4961f55de5f63a638a0fdff"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.114/pensar-darwin-x64.tar.gz"
      sha256 "b69c3d8908f78445a095dafd6c813c039e56516ab45927a99947e287da9e1c45"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.114/pensar-linux-x64.tar.gz"
      sha256 "43815ba9720f7fbd38ad151753a9b5f4e064feabee053332dc1be4985f6e900d"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
