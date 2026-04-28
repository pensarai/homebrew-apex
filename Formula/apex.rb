class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v1.1.0/pensar-darwin-arm64.tar.gz"
      sha256 "6b83e3b273fb15757c0ae6985ca6b79dd78050a1cc792bd862bf39389548bfaf"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v1.1.0/pensar-darwin-x64.tar.gz"
      sha256 "e3c99a54805a5ebf923f3dd4f26f6decbc8738bb95a8024cf321cbe41bbb9212"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v1.1.0/pensar-linux-x64.tar.gz"
      sha256 "068b2904b88149d56db2eb1ad6338c067318497b4479d42c06b2e745bd39c0cd"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
