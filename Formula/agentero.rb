class Agentero < Formula
  desc "Headless Agentero CLI for Vault / Catalog"
  homepage "https://github.com/poco-ai/Agentero"
  version "0.2.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/agentero-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "435912d3a9d7e0e7229d163656cff45c89a073e62c9dde6f770574a54e962052"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/agentero-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a5fe36151481b919bf9b2b3f4eec0668967ed45996da3e1aa35531d778cd6e7d"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/agentero-#{version}-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "92f574cd9d6b016b486133424ffd6610c8ed72e17a9ac09680c0c2a544ddd3e7"
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
