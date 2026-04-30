class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "1.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v1.6.0/pensar-darwin-arm64.tar.gz"
      sha256 "2be62fa4df236e94d5a28a152ae2e553eb2ff45e07295e547c646348c1730523"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v1.6.0/pensar-darwin-x64.tar.gz"
      sha256 "131f8c5ed1a59184f4b4e9401e1fc922a64b301679afcdaf7595b19dfe91da2b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v1.6.0/pensar-linux-x64.tar.gz"
      sha256 "94606522cc0c7304c153605d9fe582a57130d013bd185ca325aadfad134a1088"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
