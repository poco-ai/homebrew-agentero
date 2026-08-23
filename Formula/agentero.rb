class Agentero < Formula
  desc "Headless Agentero CLI for Vault / Catalog"
  homepage "https://github.com/poco-ai/Agentero"
  version "0.8.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/agentero-cli-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "2a297264fa18ee9f615df2abd58b313d5ff1e2ba32720b95d5e926ae1907a31f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/agentero-cli-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "15e3b1a13108e1c3c8eb48afb4e8261b70a02dbb412e50964c1cfd3c8df285bf"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/agentero-cli-#{version}-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "d6f01be6d776cc038b031a64c305e70b5873c17e0693a9e85c38f69d1464cd01"
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
