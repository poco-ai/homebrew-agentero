class Agentero < Formula
  desc "Headless Agentero CLI for Vault / Catalog"
  homepage "https://github.com/poco-ai/Agentero"
  version "0.8.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/agentero-cli-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "aca74ff34fed96ea455872942cbe08d4e03763a448904fb2922b5b88d427ad1b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/agentero-cli-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0604cf0d09a59857c37c146e96a816798290be6a3963860cfef84506fd3c067a"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/agentero-cli-#{version}-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "150acc57ff661b3e3b03bb91809bcdc6f49b72a71b217a0e41e95a2aea3c0ca1"
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
