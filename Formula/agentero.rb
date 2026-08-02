class Agentero < Formula
  desc "Headless Agentero CLI for Vault / Catalog"
  homepage "https://github.com/poco-ai/Agentero"
  version "0.4.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/agentero-cli-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "6ff68875af2dbc5a404c4bbf785f91848a19d5e689dccdc0285ae1daaa8e5e37"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/agentero-cli-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5c426dafb40ad09df9595d0a51822bf32a11b8e13d137ec9144c18bca92c9e3f"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/agentero-cli-#{version}-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "667d9b765c8568553b15669df054aa150ce1ff648fe765c7ecf32d6b0da0b677"
  else
    odie "Agentero CLI is not supported on this platform via Homebrew."
  end

  def install
    bin.install "agentero"
  end

  test do
    system "#{bin}/agentero", "--version"
  end
end
