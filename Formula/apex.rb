class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.96"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.96/pensar-darwin-arm64.tar.gz"
      sha256 "33924597e385d58005ba20d0d138544f1abe9bd88528b73c0bf62d787d149640"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.96/pensar-darwin-x64.tar.gz"
      sha256 "17b5b8325416371aaac9738e66d8daf2aea690702999e4ba2f1237fdb92d4bc4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.96/pensar-linux-x64.tar.gz"
      sha256 "5615a0df686e0de2ae382df97b6cba6f62140a69f6c1ca80bbd782cd69042d38"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
