cask "agentero" do
  version "0.16.0"

  on_macos do
    on_arm do
      sha256 "41d49d131fdf080e578f8777b5069800c0717468091cc90128dbbdb51f578bac"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "f3ceee9c9a920a4bb56afc57824137e133bcb94fef4e316b7791dcacc1535d0f"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "590cb0e6a8b26f16c37f0ec8d191521a50b7c7301d75ff3ca9881a82045262e0"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
