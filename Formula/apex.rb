class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "0.0.113"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v0.0.113/pensar-darwin-arm64.tar.gz"
      sha256 "c77067c415aa2b27995176d0323f45c84c54b39e78d76be5aca30d3cc2ef6060"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.113/pensar-darwin-x64.tar.gz"
      sha256 "2f4f320737dead93d1205f4c6e3b44733b62c80849c64ebfd5b25f6e29b79468"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v0.0.113/pensar-linux-x64.tar.gz"
      sha256 "5037de587b9d2d35afd8621bebb5761365c65a9088f9198785688b519903daaf"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
