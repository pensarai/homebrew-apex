class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "1.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v1.8.2/pensar-darwin-arm64.tar.gz"
      sha256 "1edd2a92f1d35f72cff4e814cc3c61b70e9002a869ac435b4af341f6892554be"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v1.8.2/pensar-darwin-x64.tar.gz"
      sha256 "1adc862efe9d78cfd14802018d84716023f3ead299c1488db7b42f59a40e11e3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v1.8.2/pensar-linux-x64.tar.gz"
      sha256 "47e0ed6ba52204663370ab93c62d8ef10667914f43af244718d9fe1dd47c58df"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
