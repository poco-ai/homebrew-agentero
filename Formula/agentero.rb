class Agentero < Formula
  desc "Headless Agentero CLI for Vault / Catalog"
  homepage "https://github.com/poco-ai/Agentero"
  version "0.5.4"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/agentero-cli-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "db3bdbe696b6c423ac8201a938d97c79d9f1c9c7dbf958d5187b6c423ef80d59"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/agentero-cli-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4eca1c3ddc8906ec0c1a4eabd1ca5df87626d21c40eb15f6c2a34c4c4dbd3e56"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/agentero-cli-#{version}-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "0dc5ce40739532018e2233a6cb82ad90531bf2b8447e37d9eba4aa0a1f2cc9d5"
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
