class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v1.5.0/pensar-darwin-arm64.tar.gz"
      sha256 "c8a43c1b882d5d846eddd412b70ce4e89a4c57874ca8c6830749df4805d42078"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v1.5.0/pensar-darwin-x64.tar.gz"
      sha256 "8e7b25a34f93cd51a98df7f896bfbb1c6e7af0dd85a081cc94d2be19b16a0ac4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v1.5.0/pensar-linux-x64.tar.gz"
      sha256 "f5b8ae0bd41b2f5562e4abfde6bc7e955c8b2f63c527a33a104ac9f2efa9036c"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
