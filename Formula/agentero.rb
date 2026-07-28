class Agentero < Formula
  desc "Headless Agentero CLI for Vault / Catalog"
  homepage "https://github.com/poco-ai/Agentero"
  version "0.2.4"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/agentero-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "691d11d203102a286cf0b34b5bfd58b8182c9cc622716015fe2c0d095b3f5fb3"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/agentero-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "59ba118c95527dda881103a6acdbe245f886cc1f60c6089db8ca00e338a0326b"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/agentero-#{version}-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "f231f596559c51fe966cebbf5fdcfddb947ad3c4eaedbe8250cb8175f6ed8754"
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
