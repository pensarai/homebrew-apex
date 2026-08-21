class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "2.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v2.4.0/pensar-darwin-arm64.tar.gz"
      sha256 "b7212cfc94c76ef258a618ce74cbbc8a4a945a0527019f462ccc9df6cc6cf39d"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v2.4.0/pensar-darwin-x64.tar.gz"
      sha256 "1a95797d908fee7ca48e628adb9aaeea3eec7e1471e1460a326d8829dd4a92dd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v2.4.0/pensar-linux-x64.tar.gz"
      sha256 "69088ced2dbba6df48e55ac136a821e9d71751d9ad454db748d11957853e467b"
    end
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v2.4.0/pensar-linux-arm64.tar.gz"
      sha256 "edc1031e527769d0f868d35faca02411d8ee9100d2fda4be78f539b8c582fd7b"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
