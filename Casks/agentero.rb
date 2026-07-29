cask "agentero" do
  version "0.3.0"

  on_macos do
    on_arm do
      sha256 "8a58978662ed4df83fb8291cc71bdfdf4d19b9c3bbe60705b7e205cd8c4d9005"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "72768af18886321de4b36afd2020790997134135ed56fd139804ac599783b2a3"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "276cef9c24442b4633e1b42861b74be730d8fa1159834fbbc808687c426a1877"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
