class Agentero < Formula
  desc "Headless Agentero CLI for Vault / Catalog"
  homepage "https://github.com/poco-ai/Agentero"
  version "0.2.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/agentero-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "908ae2556b5d1c1f962fe298181e52b21d146785942be0768beda169c4905161"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/agentero-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2c822b5196531f956f4843fd40c8e875eb825979d58849e247543b50b8b57a09"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/agentero-#{version}-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "5756b4748c6f4e247558618f14db96c992cf8f4cd5bb9ed2c878b0fe8604e2c0"
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
