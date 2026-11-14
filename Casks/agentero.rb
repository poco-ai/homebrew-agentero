cask "agentero" do
  version "0.16.1"

  on_macos do
    on_arm do
      sha256 "0c38431c0d0e769ef9d91d943c19c78de53bde7c0e20f12f6c07be3b8eeeb591"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "4aa8c748e85e768cae1aa0349d2015d9e7b44111ec73e67ecfdfa6bb572eba4b"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "6752a2cc27ad01864183cd04154233cfd52572757d2f438d5f18ea9699faeed9"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
