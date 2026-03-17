class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.101"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.101/pensar-darwin-arm64.tar.gz"
      sha256 "2237deb47faaa5afa640440846a7437bfec5a107a17712e28e8c17bd56de346f"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.101/pensar-darwin-x64.tar.gz"
      sha256 "96d23b62936c0c12d7aba4a57f58a20b4e56fab03256ae202c0d4ba08df28d83"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.101/pensar-linux-x64.tar.gz"
      sha256 "e2f5d95a3adf1ee198dd2768f8345237314bcf67499f28b3d3a61bc32057c937"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
