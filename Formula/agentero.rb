class Agentero < Formula
  desc "Headless Agentero CLI for Vault / Catalog"
  homepage "https://github.com/poco-ai/Agentero"
  version "0.6.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/agentero-cli-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "bb06d9aea5fa703af7675f2ab122af6bdc7f52ed5b7a3da119fbe68f67ebb310"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/agentero-cli-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7347520421badc363280ea8126bd3637f722fe257ba061318b3f65d45bbabd8d"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/agentero-cli-#{version}-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "d5be2addaab503f03645a0d6e4086fbb529c48a563be5482f82db44e9f2670a3"
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
