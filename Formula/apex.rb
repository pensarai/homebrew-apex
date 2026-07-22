class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "2.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v2.2.0/pensar-darwin-arm64.tar.gz"
      sha256 "e4432baafb00fa60800077553af5e92faa06c7598160cafc27eb198d2c7bce5e"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v2.2.0/pensar-darwin-x64.tar.gz"
      sha256 "55e862df55f27fc36f1239a52c974f170c27e79795880db7f5123255db06dda7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v2.2.0/pensar-linux-x64.tar.gz"
      sha256 "461e2e38598b6e5acf23eefdc5349e70c8da38eb3e1915ecc968e1e66d66333d"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
