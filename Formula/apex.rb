class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.95"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.95/pensar-darwin-arm64.tar.gz"
      sha256 "10a6aa61d2ebb90532de0349a3ec470d3fcf3c0278fab6e444c0ece662bc488e"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.95/pensar-darwin-x64.tar.gz"
      sha256 "650add5e3a65a9b06806cf1b1c72138a8314abf2b48e3c239a3544126bc083cb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.95/pensar-linux-x64.tar.gz"
      sha256 "77096597e20249d1fac541fab28d4a5c32fb5cc428215f5f2320534eb67ef1ba"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
