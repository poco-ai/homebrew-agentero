cask "agentero" do
  version "0.19.1"

  on_macos do
    on_arm do
      sha256 "5d1de4c165013c5196a95c2d8e14ce0fb8d91bc8143a5b09b4b2d881abf1c865"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "dc14060b8611302be28442b97b8ba1c4cdf81faeeb24cb0ae9a01ab6db92e3ef"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "cdba4ff2fb2da899d7ece5a8d073492817cbaeb853e370d0d716f42beee85a8f"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
