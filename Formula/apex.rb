class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "2.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v2.5.0/pensar-darwin-arm64.tar.gz"
      sha256 "54c5f9283fd99bbb157ee13099a2b3b4fef6220d0d235e5f1ea703da3c324d6d"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v2.5.0/pensar-darwin-x64.tar.gz"
      sha256 "937af0271853512dc9a7ad5e56b48222e108cb4ebe2813c7eb6428e9f615148b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v2.5.0/pensar-linux-x64.tar.gz"
      sha256 "7c87a14aa2fb699e543a11a7b1484a00a6a2d28c37539653e677e66f449f51df"
    end
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v2.5.0/pensar-linux-arm64.tar.gz"
      sha256 "47f0a862f31e125b19a89b0414ac509026b6ba241355f5ed07075256dccc9fc2"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
