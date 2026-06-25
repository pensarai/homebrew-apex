class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "2.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v2.1.1/pensar-darwin-arm64.tar.gz"
      sha256 "9ee446f02c000997e589006892cbb913ea2f11375e08d7ee4ed9eaeb2e57980f"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v2.1.1/pensar-darwin-x64.tar.gz"
      sha256 "95ef3fae12127a49fd3d24c2f21e3106e3453ffe33e21504fa3d063dc9668ceb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v2.1.1/pensar-linux-x64.tar.gz"
      sha256 "2ef8d28ac8d12fb29792596973033e31192fafe6137c4956eaa803a6f7d09700"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
