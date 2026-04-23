class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v1.0.0/pensar-darwin-arm64.tar.gz"
      sha256 "ddad141397d1aa207efd42f574ea4c674f23451b72d603005946cd3c7b6c61bc"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v1.0.0/pensar-darwin-x64.tar.gz"
      sha256 "57a02e3906ef88a6a317dd6373bb300b14f1e1b4fd56faac7caa82679ad6b347"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v1.0.0/pensar-linux-x64.tar.gz"
      sha256 "4427f1e4f3176d4689a24541ad34876534a552b62dbb8c45fa4fe636fd8d9cc7"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
