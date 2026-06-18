class Apex < Formula
  desc "AI-powered penetration testing CLI tool with terminal UI"
  homepage "https://github.com/pensarai/apex"
  version "2.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pensarai/apex/releases/download/v2.0.1/pensar-darwin-arm64.tar.gz"
      sha256 "b0e7082bb8fb3b6bf7672aa350dc17a43e58d656a091511532e01c5cba628dd2"
    end
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v2.0.1/pensar-darwin-x64.tar.gz"
      sha256 "9189e3699c276f974b484b6dbfef8542cf2619abcf3b8012a2017c88ddf8a69d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pensarai/apex/releases/download/v2.0.1/pensar-linux-x64.tar.gz"
      sha256 "de727d4febe693af5bec3c06138900ad28cd0cbe18cdc40e49ca7314f015422d"
    end
  end

  def install
    bin.install "pensar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pensar --version")
  end
end
