class Agentero < Formula
  desc "Headless Agentero CLI for Vault / Catalog"
  homepage "https://github.com/poco-ai/Agentero"
  version "0.1.1"
  license "MIT"

  # NOTE: The sha256 values below are placeholders. They are overwritten
  # automatically by the release workflow in poco-ai/Agentero. Do not install
  # from this tap until the first release has updated them.

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/agentero-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "05a19efacab91f3106fdeb7b874e1f77b363bc0260abfcf17d1affc70bf112b3"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/agentero-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "PLACEHOLDER_SHA256_X86_64_APPLE_DARWIN"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/agentero-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0884949033bea39944909717bc4760dd46013c0d36fa3aede34a13ffd057416e"
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
