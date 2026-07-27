class Agentero < Formula
  desc "Headless Agentero CLI for Vault / Catalog"
  homepage "https://github.com/poco-ai/Agentero"
  version "0.2.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/agentero-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "dd3b4de3a4dce37d448c3c2378ae43a9701b404b49f9cea1240aca629227f1de"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/agentero-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0887097ff95621e63d835ddfe36085d892a7755caa47435de5082583dcffc8b9"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/agentero-#{version}-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "c7727f49b22d55c4c23162bcac79c668e32438ffff1374fa6244a34ef39cf7b7"
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
