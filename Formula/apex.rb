class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.106"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.106/pensar-darwin-arm64.tar.gz"
      sha256 "51c1f5ece1848ed61524ef0e5fb5764bdd36d93ae24f623cb3e80d021638167c"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.106/pensar-darwin-x64.tar.gz"
      sha256 "4ab350aae82d4386fb04f9efff298a9d54353aebe9ff1ba218e6acb5f3f568c9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.106/pensar-linux-x64.tar.gz"
      sha256 "d98c52e0a1b1b3dfaced34a3fb7beee1bb36afb5f94d26e528d3fe0f923aecba"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
