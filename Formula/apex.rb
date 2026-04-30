class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v1.4.0/pensar-darwin-arm64.tar.gz"
      sha256 "6f264c0005a1d71624f17d3755bfb78a7fe36b6e9c6f7e336edf210d99b411aa"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v1.4.0/pensar-darwin-x64.tar.gz"
      sha256 "1812c0599adc17cb4cf487b4250194458baa85da5c9673cfd6495e4b6e7e26f2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v1.4.0/pensar-linux-x64.tar.gz"
      sha256 "cc65718505029c537857701defa7035dba43ce52babe81f7efe9bc8319f7620d"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
