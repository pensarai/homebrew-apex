class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.99"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.99/pensar-darwin-arm64.tar.gz"
      sha256 "e14f4877d7a5dee02d1ccb9ac89da757ddc1a5a3fa9d953d827788631fa105da"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.99/pensar-darwin-x64.tar.gz"
      sha256 "158c0d3793c8552deec8922e15cb973cc9e6f5e655b921d8613e7c9c4d2e09fc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.99/pensar-linux-x64.tar.gz"
      sha256 "5daca0f26eb1135f83412b73a9f4954762b9f7ef9c3af77e48d74b043c6d4eca"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
