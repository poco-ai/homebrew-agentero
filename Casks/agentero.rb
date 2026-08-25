cask "agentero" do
  version "0.8.1"

  on_macos do
    on_arm do
      sha256 "3c59ab3450364bc7474bfee06bf6471aebcd308025fbc1be1322a15a5a891002"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "b28846a5addb8259ab5f5e4606b2a9eeb53bab495b9e90f504856e8ba64159a9"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "72d11dbae1c25d19514c87fb7c5af39b5ee73c5ae4fe56a270d15f0fb9a639a0"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
